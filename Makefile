APPNAME := app

build: 
  @docker-compose build $(APPNAME)

down:
  @docker-compose down -v $(APPNAME)

logs:
  @docker-compose logs -f $(APPNAME)

up: build 
  @docker-compose up -d $(APPNAME)
  
.PHONY: build logs down up
