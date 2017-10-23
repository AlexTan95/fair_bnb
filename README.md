<form method="post" action="/users">
	Email: <input type="text" name="user[email]">
	<input type="submit" value="Create NOW">
</form>




<%= form_for @user do |f| %>
<!-- how come rails know how to go to post '/users after i click submit button under this form?'
thats because 
1) this is under new.html.erb, before loading this app/views/users/new.html.erb, i had loaded the code under app/controllers/users_controllers.rb, so they know what is @user, its actuallt User.new

2) because this is new.html.erb, once submit, it links with create action -->

	<%= f.label :email %>
	<%= f.text_field :email %>
	
	<%= f.submit "Create NOW" %>



<% end %>