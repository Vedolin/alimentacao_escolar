**** Grouping
    rails generate scaffold Grouping name:string


**** School
    
    rails generate scaffold School name:string address:text grouping:belongs_to



**** Target 
    belongs to school	

	rails generate scaffold Target name:string school:belongs_to
4 a 6 anos

**** Kind
    has meals

    rails generate scaffold Kind name:string target:belongs_to


**** Meal belongs to Kind
	planejado
	servido

	rails generate scaffold Meal planned:text served:text shceduled_to:date target:belongs_to kind:belongs_to




Arroz, feijao, abobrinha, frango desfiado, salada de alface
Arroz, feijao, cenoura, frango desfiado, salada de couve


Arroz, feijao, abobrinha, frango desfiado, salada de alface
Arroz, lentilha, batata, peixe assado






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
