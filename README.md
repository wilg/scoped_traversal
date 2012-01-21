# Scoped Traversal

A simple way to define next and previous relationships in an ActiveRecord model.

For example, if you have a list of `articles`, and you want to be able to traverse them with `article.next` and `article.previous`.

## Installation

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "scoped_traversal"
 ```

**Requires Ruby 1.9.2 or later.**

## Usage

In your model, call rank_by and pass in a column name.

 ```ruby
 class User < ActiveRecord::Base
 	traverse_by :score
 end
 ```

You can then traverse them with the following methods:

 ```ruby
@user.next
@user.previous
 ```
 
### Namespaces

You can also add an optional namespace, like so:

 ```ruby
class User < ActiveRecord::Base
	traverse_by :score, namespace: true
	traverse_by :created_at, namespace: :oldest
end
 ```

You can then traverse them with the following methods:

 ```ruby
 @user.next_score
 @user.previous_score
    
 @user.next_oldest
 @user.previous_oldest
 ```
 
## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/supapuerco/scoped_traversal/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Wil Gieseler and is under the MIT License.