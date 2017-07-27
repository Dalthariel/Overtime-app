# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- x Approval Workflow
- x SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- x Email summary to managers for approval (need to find an email program for my domain)
- x Needs to be documented if employee did not log overtime
- x Create Audit Log for each text message
- x Need to update end_date when confirmed
- Need to update audit log status when an overtime item is rejected
- Update buttons on employee homepage so they show on mobile
- Update buttons to include timespan
- Update sort order for buttons
- Remove unnecessary buttons for managers
- fix bug in admin dashboard when logging out
- implement honeybadger for error reporting
- implement new relic for keeping site alive

- fix it so admins can't edit the overtime request submissions, just approve or reject