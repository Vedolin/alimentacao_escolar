
rails new alimentacao_escolar
cd alimentacao_escolar

rails destroy scaffold Group
rails destroy scaffold Execution
rails destroy scaffold Age
rails destroy scaffold Kind
rails destroy scaffold School
rails destroy scaffold Meal

rails generate scaffold Group name:string
rails generate scaffold Execution name:string
rails generate scaffold Age name:string 
rails generate scaffold Kind name:string
rails generate scaffold School name:string address:text execution:references group:belongs_to
rails generate scaffold Meal planned:text served:text scheduled_to:date age:belongs_to kind:belongs_to school:belongs_to

rails db:migrate
rails db:seed


#Incluir o simple_from no Gemfile; bundle install
#Executar

rails generate simple_form:install --bootstrap

######### Estas linhas nao serao necessarias. So precisei dela para gerar as view novamente a partir do simple_form

rails generate scaffold School name:string address:text execution:references group:belongs_to --skip
rails generate scaffold Meal planned:text served:text scheduled_to:date age:belongs_to kind:belongs_to school:belongs_to --skip
rails generate scaffold Group name:string --skip
rails generate scaffold Execution name:string --skip
rails generate scaffold Age name:string  --skip
rails generate scaffold Kind name:string --skip

######## Final das linhas que geraram as novas views

