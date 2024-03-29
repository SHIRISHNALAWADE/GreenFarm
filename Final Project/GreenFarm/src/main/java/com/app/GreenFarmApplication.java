package com.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import com.app.entities.Admin;
import com.app.services.AdminService;

@SpringBootApplication
@EnableJpaAuditing
public class GreenFarmApplication {

	private static final Logger log = LoggerFactory.getLogger(GreenFarmApplication.class);
	
	public static void main(String[] args) {
		SpringApplication.run(GreenFarmApplication.class, args);
	}

	@Bean
	public CommandLineRunner demo(AdminService srv) {
	    return (args) -> {
	    	if(srv.countAdmin()==0) {
	    		Admin admin=new Admin();
	    		admin.setEmail("admin@gmail.com");
	    		admin.setPwd("admin");
	    		admin.setUname("Administrator");
	    		srv.updateAdmin(admin);
	    		log.info("Admin user created successfully");
	    	}
	    };
	}
}
