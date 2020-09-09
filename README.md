# README

This README would normally document whatever steps are necessary to get the
application up and running.

Application versions: Rails 6, Sqlite

This application is using JWT token based authentication

Steps to run the application:

rake db:create
rake db:migrate

rails s

Open another tab to create the user token by hitting api,

$ curl -H "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":"123123123"}' http://localhost:3000/authenticate


This will generate a token now you can use the same in Postman to test all the fucntionalities

List of Apis:

To create doctor: POST: localhost:3000/doctors

To create doctor_appointments: POST localhost:3000/doctor_appointments

To get the list of all the appointments:
GET localhost:3000/doctor_appointments/get_appointments_for_the_day

To get the list appoints for the specific doctor for the day:
GET localhost:3000/doctors/1/get_my_appointments_today



* ...
