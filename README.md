DtekPortalenRemake
==================

### Howto setup
First off, install ruby and gem (ruby package manager). Next up, install needed packages:

```
$ gem install data_mapper dm-sqlite-adapter sqlite3 sinatra
```

**TODO**: ^ add correct packages.

Next up, start it using rackup:

```
$ rackup -p <PORT>
```

where **<PORT>** is any arbitrary port you want to host it using. Then access it by visiting http://localhost:**<PORT>**/

### Develop
We use a simple variant of MVC (Model-View-Controller). 

#### Controllers
Controllers typically serve up views and handle the http requests. To add your own controller (aside from the MainController), simply copy the MainController into a new file:

```
$ cp controllers/MainController.rb controllers/YourController.rb
```

Next up add the route in config.ru

```ruby
map('/your-route') { run YourController }
```

Every path '/your-route/*' will now be handled by YourController.rb.

##### Requests
Sinatra uses a simple request mapping:

```ruby
get '/foo/bar/:name' {
	"Hello ${params[:name]}"
}
```

Substitute 'get' with 'post' in order to match a post-request.

##### Sinatra
Sinatra is simple and useful, google it for the naughty and sexy documentation!
