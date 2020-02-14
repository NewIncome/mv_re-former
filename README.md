# _Micro-Reddit_

> ON this project we learned the differences between the form_tag, the form_for and the basic Html form.

![image](https://i.imgur.com/duYollu.png)

## Models

- Basic Html
  - It's the most basic (as the name suggests it), and it relies only on Html to be created, so you need to add encryption, so that rails can read it.

  ```
    <form action="/users" method="post" accept-charset="UTF-8" class="new-user">
      <inp ut type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
      <label for="username" value="Username">Username</label>
      <input type="text" name="user[username]" id="username">
      <label for="email" value="Email">Email</label>
      <input type="email" name="user[email]" id="email">
      <label for="password" value="Password">Password</label>
      <input type="password" name="user[password]" id="password" autocomplete="off">
      <input type="submit">
    </form>
  ```
- form_tag
  - It's the first rails way, it automatically adds the auth input but otherwise, it's still pretty much like making a pure html form
  ```
    <%= form_tag "/users", class:"new-user" do %>
      <%= label_tag :username, "Username" %>
      <%= text_field_tag :username, nil, placeholder:"Enter your desired Username" %>
      <%= label_tag :email, "Email" %>
      <%= text_field_tag :email, nil, placeholder:"Enter a valid Email" %>
      <%= label_tag :password, "Password" %>
      <%= password_field_tag :password, nil %>
      <%= submit_tag :submit %>
    <% end %>
  ```
- form_for
  - It's the most railsy way to do forms (in rails 5), it automatically sends the authentication, and also nest the field inputs into a hash before sending it.
  ```
    <%= form_for @user, html: {class: 'new-user'} do |usr| %>
      <%= render 'shared/errors' %>
      <%= usr.label :username, 'Username' %>
      <%= usr.text_field :username, placeholder: 'Your username', value: value_helper(@user.username) %>
      <%= usr.label :email, 'Email'%>
      <%= usr.text_field :email, placeholder: 'Your@email.com', value: value_helper(@user.email) %>
      <%= usr.label :password, 'Password' %>
      <%= usr.password_field :password, value: value_helper(@user.password) %>
      <%= usr.submit :submit, value: action_name + ' user' %>
    <% end %>
  ```

### How to use

You can try the different forms by yoursel:

- Cloning the repo:
  ```
  $ git clone git@github.com:NewIncome/mv_re-former.git
  ```
- Checkout to the correct branch (this depends on what are you testing, exp: develop, feature/_your desired feature_, etc.):
  ```
  $ git checkout _your desired branch_
  ```
- bundle the necesary gems
  ```
  $ bundle
  ```
- yarn the necesary packages
  ```
  $ yarn install --check-files
  ```
- Open a rails server
  ```
  $ rails s
  ```
- Open your browser in the _users/new_ or _users/:id/edit_
## Built With

- Ruby
- Ruby on Rails

- A bunch on gems used inside rails itself

## Authors

👤 **Joseph Flores**
- Github: [@YoseptF](https://github.com/YoseptF)
- Twitter: [@Yosept__](https://twitter.com/Yosept__)
- Linkedin: [Joseph Flores](https://www.linkedin.com/in/joseph-flores-928505106/)

👤 **Alfredo C.**
- Github: [@NewIncome](https://github.com/NewIncome)
- Twitter: [@J_A_fredo](https://twitter.com/J_A_fredo)
- Linkedin: [Alfredo C.](https://www.linkedin.com/in/alfredo-cardenas-62b021183 )
