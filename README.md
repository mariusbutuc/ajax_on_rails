# Ajax on Rails

Creating a 100% ajax CRUD using Rails 3.1 and UJS,
inspired by [stJhimy](http://stjhimy.com/posts/7-creating-a-100-ajax-crud-using-rails-3-and-unobtrusive-javascript).

### Steps in augmenting the default (nifty) scaffold:

1. Create a unique form in `/posts` that will do everything with ajax:
`index`, `create`, `edit` and `destroy`. Removed `new` and `show`.
2. Add ajax magic:
   - remote requests, both in controller and links
   - placeholder divs to be handled with UJS
   - remove the redirects from the controller
   - the actions return JS, to change the DOM

### PoC covering:

- Rails 3.1
- UJS with jQuery
- `nifty-generators`