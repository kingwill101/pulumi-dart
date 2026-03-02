// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSiteCredential {
  /// The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  final pulumi.Input<String>? name;
  /// The Site Credentials Password used for publishing.
  final pulumi.Input<String>? password;

  /// Creates a new [WindowsWebAppSiteCredential].
  /// [name] The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  /// [password] The Site Credentials Password used for publishing.
  WindowsWebAppSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory WindowsWebAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteCredential(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
    );
  }
}

