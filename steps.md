 deploy Ruby on Rails application instructions:
* Create the model for follow table:

 ```
rails g model follow fever: boolean, cough: boolean, breath: boolean, people:
```


* create controller for follow :
```
rails g controller follows
```
* generate devis:

just follow this instructions:
[How to Add devise ](https://guides.railsgirls.com/devise)

then:
-  Add extra fiels to user table :

in terminals
1 . run 
```
rails g migration AddExtraFieldToUser
```
2 . edit 
```
db/migrate/AddExtraFieldToUser.erb add:

class AddExtraFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,:string
    add_column :users, :role,:string, :default => "R_user"
    add_column :users, :age,:integer
    add_column :users, :phone,:integer
  end
end
```

3 . run 
```
rails db:migrate
```
To check 
go to 
``` db/schema.rb ``` 
and see the data you add it in the database

4 .  edit 
```
app/views/devise/registration/new.html.erb :
add field that you add it to the database
```
5 . 
```
rails g controller registrations
```

6 . go to 
```
app/controllers/registrations_controller.rb and edit:
class RegistrationsController < Devise::RegistrationsController

    def sign_up_params
        params.require(:user).permit(:email,:password,:password_confirmation,:name,:age,:phone)
    end
end
```

* This method to manage the data and puting it in user table 
7 . go to 
```
config/routes.rb and edit the devise
 devise_for :users , :controllers => {registrations: 'registrations'}
 ```

 and Done 
** Make sure your rails server is running, open http://localhost:3000/users/sign_up and create your user account.

-----------

* . Bootstrap:
[Lets add Bootstrap ](https://medium.com/@biancapower/how-to-add-bootstrap-4-to-a-rails-5-app-650118459a1e) 

* .to let user add just one field in each day 
Edit follow table in database 

```
rails g migration AddExtraFieldToFollow
```

Make sure the create_on is date not! datetime
add_index will make a constraint to the table

```
db/migrate/AddExtraFieldToUser.erb add:
class UpdateUniquenessConstraintToFollow < ActiveRecord::Migration[5.2]
  def change
    add_index :follows, [:user_id, :created_on], unique: true
  end
end
```



