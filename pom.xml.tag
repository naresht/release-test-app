<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>com.myapp</groupId>
  <artifactId>myreleaseapp</artifactId>
  <version>1.4.RC1</version>
  <packaging>jar</packaging>

  <name>myreleaseapp</name>
  <url>http://maven.apache.org</url>

  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
	 <slf4j.version>1.6.5</slf4j.version>
  </properties>

 <scm>
		<url>scm:git:git@github.com:naresht/release-test-app.git</url>
		<connection>scm:git:git@github.com:naresht/release-test-app.git</connection>
		<developerConnection>scm:git:git@github.com:naresht/release-test-app.git</developerConnection>
	  <tag>HEAD</tag>
  </scm>
  
  <distributionManagement>
		<repository>
			<id>release</id>
			<name>Cloudbees release repository</name>
			<!-- Webdav repository url are prefixed with dav: -->
			<url>dav:https://repository-bfds.forge.cloudbees.com/release/</url>
		</repository>
		<snapshotRepository>
			<id>snapshot</id>
			<name>Cloudbees snapshot repository</name>
			<url>dav:https://repository-bfds.forge.cloudbees.com/snapshot/</url>
		</snapshotRepository>
	</distributionManagement>
  <repositories>
	<repository>
            <id>spring-maven-release</id>
            <name>Spring Maven Release Repository</name>
            <url>http://maven.springframework.org/release</url>
        </repository>
        <repository>
            <id>spring-maven-milestone</id>
            <name>Spring Maven Milestone Repository</name>
            <url>http://maven.springframework.org/milestone</url>
        </repository>
        <repository>
            <id>spring-roo-repository</id>
            <name>Spring Roo Repository</name>
            <url>http://spring-roo-repository.springsource.org/release</url>
        </repository>
	<!-- Cloudbees maven repositories for releases and snapshots -->
		<repository>
			<id>release</id>
			<name>Cloudbees release repository</name>
			<url>https://repository-bfds.forge.cloudbees.com/release</url>
			<releases>
				<enabled>true</enabled>
			</releases>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
		</repository>
		<repository>
			<id>snapshot</id>
			<name>Cloudbees snapshot repository</name>
			<url>https://repository-bfds.forge.cloudbees.com/snapshot</url>
			<releases>
				<enabled>false</enabled>
			</releases>
			<snapshots>
				<enabled>true</enabled>
			</snapshots>
		</repository>
		
		<repository>
			<id>codehaus</id>
			<name>Maven Codehaus repository</name>
			<url>http://repository.codehaus.org</url>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
		</repository>
		
	</repositories>
  
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
	<dependency>
        <groupId>org.apache.maven.wagon</groupId>
        <artifactId>wagon-webdav</artifactId>
        <version>1.0-beta-2</version>
	</dependency>

	<dependency>
		<groupId>org.slf4j</groupId>
		<artifactId>slf4j-api</artifactId>
		<version>${slf4j.version}</version>
	</dependency>
	<dependency>
		<groupId>org.codehaus.woodstox</groupId>
		<artifactId>woodstox-core-asl</artifactId>
		<version>4.0.6</version>
		<optional>true</optional>
		<exclusions>
			<exclusion>
				<groupId>stax</groupId>
				<artifactId>stax-api</artifactId>
			</exclusion>
		</exclusions>
	</dependency>
	<dependency>
		<groupId>org.codehaus.jettison</groupId>
		<artifactId>jettison</artifactId>
		<version>1.1</version>
		<exclusions>
			<exclusion>
				<groupId>stax</groupId>
				<artifactId>stax-api</artifactId>
			</exclusion>
		</exclusions>
	</dependency>
	<dependency>
                <groupId>org.codehaus.jackson</groupId>
                <artifactId>jackson-jaxrs</artifactId>
                <version>1.9.8</version>
            </dependency>
		<dependency>
				<groupId>org.apache.commons</groupId>
				<artifactId>commons-lang3</artifactId>
				<!-- <version>PLEASE DON'T USE COMMONS LANG</version> -->
				<version>3.1</version>
				<optional>true</optional>
			</dependency>
			<dependency>
				<groupId>commons-io</groupId>
				<artifactId>commons-io</artifactId>
				<version>1.4</version>
				<optional>true</optional>
			</dependency>
			<dependency>
				<groupId>commons-pool</groupId>
				<artifactId>commons-pool</artifactId>
				<version>1.5.4</version>
				<exclusions>
					<exclusion>
						<groupId>commons-logging</groupId>
						<artifactId>commons-logging</artifactId>
					</exclusion>
				</exclusions>				
			</dependency>
			<dependency>
				<groupId>commons-collections</groupId>
				<artifactId>commons-collections</artifactId>
				<version>3.2</version>
				<optional>true</optional>
			</dependency>
            <dependency>
                <groupId>commons-digester</groupId>
                <artifactId>commons-digester</artifactId>
                <version>2.0</version>
                <exclusions>
                    <exclusion>
                        <groupId>commons-logging</groupId>
                        <artifactId>commons-logging</artifactId>
                    </exclusion>
                </exclusions>
            </dependency>
            <dependency>
				<groupId>commons-dbcp</groupId>
				<artifactId>commons-dbcp</artifactId>
				<version>1.4</version>
				<exclusions>
					<exclusion>
						<groupId>commons-logging</groupId>
						<artifactId>commons-logging</artifactId>
					</exclusion>
					<exclusion>
						<groupId>xerces</groupId>
						<artifactId>xerces</artifactId>
					</exclusion>
					<exclusion>
						<groupId>xerces</groupId>
						<artifactId>xercesImpl</artifactId>
					</exclusion>
					<exclusion>
						<groupId>xml-apis</groupId>
						<artifactId>xml-apis</artifactId>
					</exclusion>
				</exclusions>
			</dependency>
  </dependencies>
  
  <build>
		<extensions>
			<!-- Extension required to deploy a release to the CloudBees remote maven 
				repository using Webdav -->
			<extension>
				<groupId>org.apache.maven.wagon</groupId>
				<artifactId>wagon-webdav</artifactId>
				<version>1.0-beta-2</version>
			</extension>
		</extensions>
		<pluginManagement>
			<plugins>
				<!-- Plugin used to process release using the command line: mvn release:prepare release:perform -->
				<plugin>
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-release-plugin</artifactId>
					<version>2.2.2</version>
				</plugin>	
				<plugin>
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-deploy-plugin</artifactId>
					<version>2.7</version>
				</plugin>			
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-clean-plugin/ -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-clean-plugin</artifactId>
					<version>2.3</version>
				</plugin>
				<plugin>
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-compiler-plugin</artifactId>
					<version>2.4</version>
					<configuration>
						<source>${java.source.version}</source>
						<target>${java.target.version}</target>
						<encoding>${project.build.sourceEncoding}</encoding>
					</configuration>
				</plugin>
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-eclipse-plugin/ -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-eclipse-plugin</artifactId>
					<version>2.7</version>
					<configuration>
						<downloadSources>true</downloadSources>
					</configuration>
				</plugin>
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-idea-plugin/ -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-idea-plugin</artifactId>
					<version>2.2</version>
					<configuration>
						<downloadSources>true</downloadSources>
						<jdkLevel>${jdk.version}</jdkLevel>
						<dependenciesAsLibraries>true</dependenciesAsLibraries>
						<useFullNames>false</useFullNames>
					</configuration>
				</plugin>
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-install-plugin/ -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-install-plugin</artifactId>
					<version>2.3</version>
				</plugin>
				<plugin>
					<artifactId>maven-jar-plugin</artifactId>
					<version>2.3</version>
				</plugin>
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-resources-plugin/ -->
					<!-- Substitute variables in resource files -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-resources-plugin</artifactId>
					<version>2.5</version>
					<configuration>
						<encoding>UTF-8</encoding>
					</configuration>
				</plugin>
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-site-plugin/ -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-site-plugin</artifactId>
					<version>2.0.1</version>
				</plugin>
				<plugin>
					<artifactId>maven-source-plugin</artifactId>
					<version>2.1.2</version>
				</plugin>
				<plugin>
					<artifactId>maven-surefire-plugin</artifactId>
					<version>2.9</version>
                    <configuration>
                        <useFile>false</useFile>
                        <excludes>
                            <exclude>**/*_Roo_*</exclude>
                        </excludes>
                    </configuration>
				</plugin>
				<plugin>
					<!-- http://maven.apache.org/plugins/maven-war-plugin/ -->
					<groupId>org.apache.maven.plugins</groupId>
					<artifactId>maven-war-plugin</artifactId>
					<version>2.3</version>
				</plugin>
				<plugin>
					<groupId>org.zeroturnaround</groupId>
					<artifactId>jrebel-maven-plugin</artifactId>
					<version>1.0.7</version>
				</plugin>
				<plugin>
					<groupId>org.mortbay.jetty</groupId>
					<artifactId>maven-jetty-plugin</artifactId>
					<version>${jetty.version}</version>
				</plugin>
				<!--This plugin's configuration is used to store Eclipse m2e settings 
					only. It has no influence on the Maven build itself. -->
				<plugin>
					<groupId>org.eclipse.m2e</groupId>
					<artifactId>lifecycle-mapping</artifactId>
					<version>1.0.0</version>
					<configuration>
						<lifecycleMappingMetadata>
							<pluginExecutions>
								<pluginExecution>
									<pluginExecutionFilter>
										<groupId>
											org.zeroturnaround
										</groupId>
										<artifactId>
											jrebel-maven-plugin
										</artifactId>
										<versionRange>
											[1.0.7,)
										</versionRange>
										<goals>
											<goal>generate</goal>
										</goals>
									</pluginExecutionFilter>
									<action>
										<ignore />
									</action>
								</pluginExecution>
							</pluginExecutions>
						</lifecycleMappingMetadata>
					</configuration>
				</plugin>
			</plugins>

		</pluginManagement>
	</build>
	<pluginRepositories>
		<pluginRepository>
			<id>spring-maven-release</id>
			<name>Spring Maven Release Repository</name>
			<url>http://maven.springframework.org/release</url>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
		</pluginRepository>
		<pluginRepository>
			<id>Codehaus Releases</id>
			<url>https://nexus.codehaus.org/content/repositories/releases</url>
			<snapshots>
				<enabled>false</enabled>
			</snapshots>
		</pluginRepository>
		<pluginRepository>
			<id>spring-maven-milestone</id>
			<name>Spring Maven Milestone Repository</name>
			<url>http://maven.springframework.org/milestone</url>
		</pluginRepository>
		<pluginRepository>
			<id>spring-roo-repository</id>
			<name>Spring Roo Repository</name>
			<url>http://spring-roo-repository.springsource.org/release</url>
		</pluginRepository>		
	</pluginRepositories>
</project>
