// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppServiceSiteCredential {
  /// The password associated with the username, which can be used to publish to this App Service.
  final pulumi.Input<String>? password;

  /// The username which can be used to publish to this App Service
  final pulumi.Input<String>? username;

  /// Creates a new [AppServiceSiteCredential].
  /// [password] The password associated with the username, which can be used to publish to this App Service.
  /// [username] The username which can be used to publish to this App Service
  AppServiceSiteCredential({this.password, this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'username': ?username};
  }

  factory AppServiceSiteCredential.fromMap(Map<String, dynamic> map) {
    return AppServiceSiteCredential(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
