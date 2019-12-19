alias Blog.Repo
alias Blog.Resource.Post
alias Blog.Resource.Comment

%Post{
  title: "The first blog post",
  body: "The first blog post body"
}
|> Repo.insert!()

%Post{
  title: "The second blog post",
  body: "The second blog post body"
}
|> Repo.insert!()

%Post{
  title: "The third blog post",
  body: "The third blog post body"
}
|> Repo.insert!()

%Comment{
  post_id: 1,
  body: "The first post was awesome!"
}
|> Repo.insert!()

%Comment{
  post_id: 1,
  body: "The first post was awesome too! omg"
}
|> Repo.insert!()

%Comment{
  post_id: 2,
  body: "The second post was not so awesome!"
}
|> Repo.insert!()

%Comment{
  post_id: 3,
  body: "The third post was awesome! what?!"
}
|> Repo.insert!()
