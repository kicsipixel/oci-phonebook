# README

A simple Ruby on Rails application for demo purposes. You can clone it and after the preparation, it's ready to run.

### Preparation:

- Create DB user:
`$ createuser -P -d oci_phonebook`

- Set the password of your user at PostgreSQL prompt
`postgres=# \password oci_phonebook`

- Set your password as environment variable:
`$ export 'APPNAME_DATABASE_PASSWORD="yoursecrethere"'`

- Seed some dummy data:
`$ bin/rails db:seed`
