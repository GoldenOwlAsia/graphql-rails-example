# create user
ben = User.create(name: 'ben', email: 'ben@gmail.com', password: '123123123')

# create links
Link.create(url: 'http://graphql.org/', description: 'The Best Query Language', user: ben)
Link.create(url: 'http://dev.apollodata.com/', description: 'Awesome GraphQL Client', user: ben)
