Meteor [Admin](https://github.com/yogiben/meteor-admin) Settings
================================================================

Adds page for key value stores in yogiben:admin dashboard.

## Setup

1. `meteor add yogiben:admin-settings`
2. Go to `/admin` and select `Settings` from sidebar
3. Use `adminSetting` helper or `AdminSettings.get` to get your setting value.

## Using adminSetting helper

```handlebars
<template name="example">
  <h1>{{adminSetting 'Welcome message'}}</h1>
</template>
```

## Using AdminSettings.get method

```coffeescript
welcomeMessage = AdminSettings.get 'Welcome message'
```
