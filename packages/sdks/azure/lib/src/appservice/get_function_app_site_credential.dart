// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionAppSiteCredential {
  /// The password associated with the username, which can be used to publish to this App Service.
  final pulumi.Input<String> password;
  /// The username which can be used to publish to this App Service
  final pulumi.Input<String> username;

  /// Creates a new [GetFunctionAppSiteCredential].
  /// [password] The password associated with the username, which can be used to publish to this App Service.
  /// [username] The username which can be used to publish to this App Service
  GetFunctionAppSiteCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetFunctionAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppSiteCredential(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

