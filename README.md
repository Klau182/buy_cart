# README

- iniciando el proyecto con:
rails new buy_cart

- creando el scaffold de la tabla articulos con los campos nombre y precio
 rails g scaffold article name price:integer

- haciendo la migracion
rails db:migrate

- definiendo la ruta raiz en el archivo config/route
root "articles#index"

-implementar gema devise en el gemfile
# Gem authentication devise
gem "devise"

- creando los recursos para el modelo devise
rails g devise:install

- copiamos la siguiente linea en 
config/environments/development.rb: en cualquier linea
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

ahora copiamos los notice y alert en layots/application.html.erb
arriba de la etiqueta tield
<p class="notice"><%= notice %></p>
 <p class="alert"><%= alert %></p>

asignando el modelo user a devise
para la autenticacion

rails g devise user

realizamos la migracion para el modelo de devise
rails db:migrate


rails g migration  addUserToArticles user:references

ahora migramos
rails db:migrate

creando la relacion entre la tabla article y la tabla usuario, 
en el modelo de user colocamos

has_many :articles

en el modelo de articulo colocamos
 belongs_to :user


