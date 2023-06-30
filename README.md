# Montar

What's a Montar?

```
Tools for migrating from Mongoid to ActiveRecord
Migrate from Mongoid to ActiveRecord
Mongoid to ActiveRecord
Mon to AR
Montar
```

:shrug:

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "montar"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install montar
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

---

* scaffold a Shortcut model in Dummy with mongoid

* get tests around the CRUD operations

* using tests, create a Montar::Migrator tool that can do step 1

* this will lead to the Montar::HasArModel helper

* and also the Montar::SyncToArWorker worker class

* with tests in place, actually perform step 1 on Dummy

* update Montar::Migrator so that it can perform step 2

* ensure CRUD operations still work!

---

So the general pattern here is going to be something like make the models using
Mongoid first, get tests around the functionality that must not break, update
Montar code to work for the models, run the steps, ensure tests still pass.

Steps could be something like:

1. Isolated model like Shortcut

2. Parent/child like User/Device (but only the child!)

3. With slugs?

4. Embeds?
