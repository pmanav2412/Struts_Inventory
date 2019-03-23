package com.demo.hbm;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.demo.DAO.Product;
import com.demo.DAO.UserInformation;

/**
 * @author vincent
 *
 */
public class HibernateUtil {
   private static StandardServiceRegistry registry;
   private static SessionFactory sessionFactory;

   public static SessionFactory getSessionFactory() {
      if (sessionFactory == null) {
         try {
            StandardServiceRegistryBuilder registryBuilder = 
                  new StandardServiceRegistryBuilder();

            Map<String, String> settings = new HashMap<>();
            settings.put("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
            settings.put("hibernate.connection.url", "jdbc:mysql://localhost/Project1?useLegacyDatetimeCode=false&serverTimezone=UTC");
            settings.put("hibernate.connection.username", "root");
            settings.put("hibernate.connection.password", "rootroot");
            settings.put("hibernate.show_sql", "true");
            settings.put("hibernate.hbm2ddl.auto", "update");
            settings.put(" connection.pool_size", "10");
            settings.put("hibernate.transaction.jta.platform", "org.hibernate.service.jta.platform.internal.WeblogicJtaPlatform");
            

            registry = registryBuilder.applySettings(settings).build();

            MetadataSources sources = new MetadataSources(registry)
                  .addAnnotatedClass(UserInformation.class)
                  .addAnnotatedClass(Product.class);;

            Metadata metadata = sources.getMetadataBuilder().build();
            sessionFactory = metadata.getSessionFactoryBuilder().build();
         
         } catch (Exception e) {
            System.out.println("SessionFactory creation failed");
            e.printStackTrace();
            if (registry != null) {
               StandardServiceRegistryBuilder.destroy(registry);
            }
         }
      }
      return sessionFactory;
   }

   public static void shutdown() {
      if (registry != null) {
         StandardServiceRegistryBuilder.destroy(registry);
      }
   }
}
