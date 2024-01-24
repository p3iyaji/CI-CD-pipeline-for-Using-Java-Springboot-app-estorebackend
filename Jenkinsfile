node {
  stage("Clone the project") {
    git branch: 'main', url: 'https://github.com/p3iyaji/estorebackend.git'
  }

  stage("Compilation") {
    mvn clean package
  }

  stage("build docker image") {
    docker build -t estorebk .
  }

  stage("create container"){
    docker run -d -p 8181:8080 --name estorebackend estorebk:latest
}
