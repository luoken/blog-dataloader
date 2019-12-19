alias Blog.Repo
alias Blog.Resource.AddContentResource
alias Blog.Resource.AddCommentResource

%AddContentResource{
  title: "The first blog post",
  body: "The first blog post body"
}
|> Repo.insert!()

%AddContentResource{
  title: "The second blog post",
  body: "The second blog post body"
}
|> Repo.insert!()

%AddContentResource{
  title: "The third blog post",
  body: "The third blog post body"
}
|> Repo.insert!()

%AddCommentResource{
  post_id: 1,
  body: "The first post was awesome!"
}
|> Repo.insert!()

%AddCommentResource{
  post_id: 1,
  body: "The first post was awesome too! omg"
}
|> Repo.insert!()

%AddCommentResource{
  post_id: 2,
  body: "The second post was not so awesome!"
}
|> Repo.insert!()

%AddCommentResource{
  post_id: 3,
  body: "The third post was awesome! what?!"
}
|> Repo.insert!()
