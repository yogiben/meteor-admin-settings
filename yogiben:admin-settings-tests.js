Tinytest.add('yogiben:admin-settings - test environment', function (test) {
  test.isTrue(
    typeof AdminSettings !== 'undefined',
    'test environment not initialized AdminSettings'
  );
  test.isTrue(
    typeof AdminSettingsTypes !== 'undefined',
    'test environment not initialized AdminSettingsTypes'
  );

});