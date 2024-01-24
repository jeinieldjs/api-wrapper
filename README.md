# Public APIs Wrapper

Built through Rails, this is an API wrapper designed to fetch data cataloged on [Public APIs](https://api.publicapis.org/). This project aims to simplify the integration of Public APIs into the development of Ruby applications.

**Note:** This wrapper utilizes the [rest-client](https://github.com/rest-client/rest-client) gem for making HTTP requests and interacting with the Public APIs.
## Endpoints used

* **GET /entries**
  - To get a list of all public API entries from the third-party API

* **GET /random**
  - To get a single public API entry at random
  - **Example Response:**
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
  - **Example Response:**
    ```irb
    irb(main):002> PublicApis::Client.health
    =>
    {:code=>200, :status=>"Success", :data=>{"alive"=>true}}
    ```


## Documentation
  For more information about methods and parameters available, you may refer to the following: 

- **Github Project:** [https://github.com/davemachado/public-api](https://github.com/davemachado/public-api)
- **Base URL:** [https://api.publicapis.org/](https://api.publicapis.org/)

