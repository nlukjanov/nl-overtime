# Overtime App

## Key requirements: to document presence of overtime hours on a weekly basis for salaried employees

- x Post -> date:date rationale:text, connected to User
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Feature:
- Approval workflow
- SMS Sending -> link to approval or overtime input
- X Administrate admin dashboard
- X Block non admin and guest users from admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- X Bootstrap -> formatting
- X Update styles for forms
- X Icons from glyphicon


##Refactor TODOS:
- X Add full_name method for users
- Refactor form for admin user with status