// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message storing info about the first admin user. Next ID: 3
class AdminUserResponse {
  /// Optional. Last/family name of the first admin user.
  final pulumi.Input<String> familyName;

  /// Optional. First/given name of the first admin user.
  final pulumi.Input<String> givenName;

  /// Creates a new [AdminUserResponse].
  /// [familyName] Optional. Last/family name of the first admin user.
  /// [givenName] Optional. First/given name of the first admin user.
  AdminUserResponse({required this.familyName, required this.givenName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'familyName': familyName, 'givenName': givenName};
  }

  factory AdminUserResponse.fromMap(Map<String, dynamic> map) {
    return AdminUserResponse(
      familyName: pulumi.Input.fromValue(map['familyName'] as String),
      givenName: pulumi.Input.fromValue(map['givenName'] as String),
    );
  }
}
