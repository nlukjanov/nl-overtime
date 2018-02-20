# Overtime App

## Key requirements: to document presence of overtime hours on a weekly basis for salaried employees

More tutorial please visit my github.





- x Post -> date:date rationale:text, connected to User
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Feature:
- x Approval workflow
- x SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- X Administrate admin dashboard
- X Block non admin and guest users from admin dashboard
- x Email summary to managers for approval
- x Needs to be doc<<<<<<< HEAD
- x Create audit log for each text message
- x home page icon
- x need to update end_date when confirmed
- x need to update audit log status when an overtime status have been rejected
- x update buttons on employee homepage
- x update buttons to include time span
- x update button sort order on employee homepage
- x remove unnecessary nav bar for managers
- x ix admin dashboard bug
- x implement HoneyBadger error reporting
- x implement new relic for keeping site alive
- x Check on data issue and verify correct hours are being tracked


## TODOS:
- update email to sent out email
- update Twilio to send sms
- update email server
- add mail server variables to .env




Goal of audit log:

Keep track of if an employee had overtime or not

Dependencies:
  - User

Attrs:
  - Status:integer (enum) -> pending, complete
  - start_date:date - > default previous Monday
  - date_verified

Monday
|
|
Sunday

rails g resource AuditLog user:references status:integer start_date:date end_date:date

AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
