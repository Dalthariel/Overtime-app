# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## To Do:

Audit Log Goals:
keep track of whether an employee has overtime or not
 - user

Attributes:
 - status:int (enum) -> pending, complete
 - start_date:date -> default previous monday
 - date_verified:date


 monday
 |
 |
 |
 sunday ---- notification

rails g resource AuditLog user:references status:integer start_date:date end_date:date

AuditLog.create!(user_id: User.last.id, status 0, start_date: (Date.today - 6.days))