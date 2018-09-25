# struts1-java-mybatis

## 1. Clone the repo in your local machine. In your terminal
```bash
git clone https://github.com/aws-java-struts1/struts1-java-mybatis.git
```

## 2. Import as Maven project in Eclipse
On the Project Explorer, right click and select **import** -> **Existing maven project** -> Then browse the cloned directory and click finish

## 3. Set Eclipse Build Path
Set the Build path to ***JAVA 8 JDK***. It is Important that the build path is JDK not JRE.

## 4. Install Maven Dependency and Build
On the Project Explorer, Right click the project -> **Run as** -> **Maven build...** with the goal *tomcat7:run*

The Maven will start to download all dependencies listed in *pom.xml* and run tomcat server.
By default you can access your application in localhost:8080/
