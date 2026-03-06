// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message storing info about the first admin user. Next ID: 3
class AdminUser {
  /// Optional. Last/family name of the first admin user.
  final pulumi.Input<String>? familyName;
  /// Optional. First/given name of the first admin user.
  final pulumi.Input<String>? givenName;

  /// Creates a new [AdminUser].
  /// [familyName] Optional. Last/family name of the first admin user.
  /// [givenName] Optional. First/given name of the first admin user.
  const AdminUser({
    this.familyName,
    this.givenName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familyName': ?familyName,
      'givenName': ?givenName,
    };
  }

  factory AdminUser.fromMap(Map<String, dynamic> map) {
    return AdminUser(
      familyName: (() { final guardedValue = map['familyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      givenName: (() { final guardedValue = map['givenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

