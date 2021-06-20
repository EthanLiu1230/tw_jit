# Ekohe Interview Pack Doc

# What I Do

I covered all the pages as requested.

## Authentication

- [x]  Signup Page
    - I use `RegistrationsController` to manage user creation.
- [x]  Login Page
    - I use `SessionsController` to manage users Session-Cookies.
    - I use `Current.user` to keep track of user's login state.

## Articles CRUD

- [x]  New Article Page
- [x]  Edit Article Page
- [x]  Article Lists View
- [x]  Show Article
- I start with a full-scaffold on Articles CRUD.
- I set articles ownership as `one user has_many articles`
- I use `kaminari` for pagination.

## Search Bar

- [x]  Search Article Page is integrated in Lists View

I use Ransack for basic search on article.title.

## Testing and Seeding

- I only covered model spec with `shoulda-matchers` gem.
- I seeds data with `FactoryBot` and `Faker`.

# What I Add

## Authorization

I use pundit to manage user's actions on articles

- User can only perform writing actions on his own articles.
- On List and Show view, reveal Edit Delete buttons only to its author
- page access control

    If user try to access unauthorized pages, say, an anonymous user tried `GET 'articles/1/edit'` , he would be redirected to Article Lists View with error message.

## Publication Scope

Publication scope is also managed by pundit, with features:

- Reveal unpublished articles only to its author

## Special Attributes

- view_count

    update attribute on show action

- publish_date

    update attribute on save given that `article.is_published == true`

## Themeable UI

- I use `tailwind css` + a newly founded `daisyUI` to for styling
- You can select theme on nav bar

# After Thoughts and Difficulties

1. Notice that I named the project `tw-jit` , because I was planning to use tailwind css's preview feature of `just in time` mode. Yesterday I just found this `daisyUI` , but I failed to make them work together in webpacker.

    So I revert the tailwind configuration, and just use CDN for both.

    These files are too large for production since unused utility classes are not purged, but I think it is ok for demo purpose.

2. I started coding without given much thought on publication Scope and access control, which result in extra git commit mixed up with my styling process, and my mind is a little bit switching back and forth.
3. I also encounter some other small difficulties along the way that I can't remember, which involves google and stack-overflow, but that is just everyday of a developer XD.