# Public APIs Wrapper

Built through Rails, this is an API wrapper designed to fetch data cataloged on [Public APIs](https://api.publicapis.org/). This project aims to simplify the integration of Public APIs into the development of Ruby applications.

**Note:** This wrapper utilizes the [rest-client](https://github.com/rest-client/rest-client) gem for making HTTP requests and interacting with Public APIs.
## Endpoints used

* **GET /entries**
  - To get a list of all public API entries from the third-party API
    
* **GET /random**
  - To get a single public API entry at random
  - **Sample Response:**
    ```irb
    irb(main):001> PublicApis::Client.random
    =>
    {:code=>200,
     :status=>"Success",
     :data=>
      {"count"=>1,
       "entries"=>
        [{"API"=>"Quotable Quotes",
          "Description"=>"Quotable is a free, open source quotations API",
          "Auth"=>"",
          "HTTPS"=>true,
          "Cors"=>"unknown",
          "Link"=>"https://github.com/lukePeavey/quotable",
          "Category"=>"Personality"}]}}
    ```

* **GET /categories**
  - To get a list of all categories used in classifying the entries

* **GET /health**
  - To check the health status of the API
  - **Sample Response:**
    ```irb
    irb(main):002> PublicApis::Client.health
    =>
    {:code=>200, :status=>"Success", :data=>{"alive"=>true}}
    ```

* **GET /entries/:category**
  - To get all entries under the same category
  - **Note:** For categories which have a space and an ampersand, use the first word as the query (ex. "Science & Math => 'science')
  - **Sample Response:**
    ```irb
    irb(main):001> PublicApis::Client.entries_by_category('vehicle')
    =>
    {:code=>200,
     :status=>"Success",
     :data=>
      {"count"=>6,
       "entries"=>
        [{"API"=>"Brazilian Vehicles and Prices",
          "Description"=>"Vehicles information from Fundação Instituto de Pesquisas Econômicas - Fipe",
          "Auth"=>"",
          "HTTPS"=>true,
          "Cors"=>"no",
          "Link"=>"https://deividfortuna.github.io/fipe/",
          "Category"=>"Vehicle"},
         {"API"=>"Helipaddy sites",
          "Description"=>"Helicopter and passenger drone landing site directory, Helipaddy data and much more",
          "Auth"=>"apiKey",
          "HTTPS"=>true,
          "Cors"=>"unknown",
          "Link"=>"https://helipaddy.com/api/",
          "Category"=>"Vehicle"},
        ...
      ]}
    ```

* **GET /supports-https**
  - To get all APIs that support HTTPS
  - **Sample Response:**
    ```irb
    irb(main):001> PublicApis::Client.supports_https
    =>
    {:code=>200,
     :status=>"Success",
     :data=>
      {"count"=>1335,
       "entries"=>
        [{"API"=>"AdoptAPet",
          "Description"=>"Resource to help get pets adopted",
          "Auth"=>"apiKey",
          "HTTPS"=>true,
          "Cors"=>"yes",
          "Link"=>"https://www.adoptapet.com/public/apis/pet_list.html",
          "Category"=>"Animals"},
         {"API"=>"Axolotl",
          "Description"=>"Collection of axolotl pictures and facts",
          "Auth"=>"",
          "HTTPS"=>true,
          "Cors"=>"no",
          "Link"=>"https://theaxolotlapi.netlify.app/",
          "Category"=>"Animals"},
        ...
      ]}
    ```

## Documentation
  For more information about methods and parameters available, you may refer to the following: 

- **Github Project:** [https://github.com/davemachado/public-api](https://github.com/davemachado/public-api)
- **Public APIs Documentation:** [https://api.publicapis.org/](https://api.publicapis.org/)

