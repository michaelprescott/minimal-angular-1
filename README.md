# minimal-angular-1
Minimalistic Angular Project - 1

* Angular is installed locally only
* Calling "npm run-script ng build" will use the local version of the cli. It will work even if you haven't installed the cli globally.
* Revise package.json scripts to include `"start": "ng serve --ssl --host localhost.zapdaz.com --ssl-cert ./certs/localhost.zapdaz.com.crt --ssl-key ./certs/localhost.zapdaz.com.key",`

-------------------------------------------------------------------------------
# MinimalAngular1

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 13.2.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.



REFERENCE
=========

Custom host
-----------
https://angular.io/cli/serve

Non-global version of Angular, project-based only
-------------------------------------------------
https://github.com/angular/angular-cli/issues/5955#issuecomment-320273493
https://stackoverflow.com/questions/48128847/how-to-install-angular-cli-locally-without-the-g-flag
