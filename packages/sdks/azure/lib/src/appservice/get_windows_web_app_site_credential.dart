// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppSiteCredential {
  /// The name of this Windows Web App.
  final pulumi.Input<String> name;

  /// The Site Credentials Password used for publishing.
  final pulumi.Input<String> password;

  /// Creates a new [GetWindowsWebAppSiteCredential].
  /// [name] The name of this Windows Web App.
  /// [password] The Site Credentials Password used for publishing.
  GetWindowsWebAppSiteCredential({required this.name, required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'password': password};
  }

  factory GetWindowsWebAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteCredential(
      name: pulumi.Input.fromValue(map['name'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
    );
  }
}
