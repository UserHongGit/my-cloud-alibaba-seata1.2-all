package com.atguigu.springcloud.config;

import org.springframework.context.annotation.Configuration;

@Configuration
public class DataSourceProxyConfig  {
//    @Value("${mybatis.mapper-locations}")
//    private String mapperLocations;
//
//    @Bean
//    @ConfigurationProperties(prefix = "spring.datasource")
//    public DataSource druidDataSource(){
//        return  new DruidDataSource();
//    }
//    @Bean
//    public DataSourceProxy dataSourceProxy(DataSource dataSource){
//        return new DataSourceProxy(dataSource);
//    }
//    @Bean
//    public SqlSessionFactory sqlSessionFactory(DataSourceProxy dataSourceProxy) throws  Exception{
//        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
//        sqlSessionFactoryBean.setDataSource(dataSourceProxy);
//        sqlSessionFactoryBean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources(mapperLocations));
//        sqlSessionFactoryBean.setTransactionFactory(new SpringManagedTransactionFactory());
//        return  sqlSessionFactoryBean.getObject();
//
//    }


}
