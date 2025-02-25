# README

seed data

```
bundle install
rails db:migrate
rails db:seed
```

run server

```
rails s
```

visit http://localhost:3000/posts, destroy one post, and I do see bullet log


```
USE eager loading detected
  Comment => [:from_user]
  Add to your query: .includes([:from_user])


USE eager loading detected
  Comment => [:to_user]
  Add to your query: .includes([:to_user])
```
