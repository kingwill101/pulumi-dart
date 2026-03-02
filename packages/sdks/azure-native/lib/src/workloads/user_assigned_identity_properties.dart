// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned managed identity properties.
class UserAssignedIdentityProperties {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? principalId;

  /// Creates a new [UserAssignedIdentityProperties].
  /// [clientId] Optional.
  /// [principalId] Optional.
  UserAssignedIdentityProperties({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityProperties(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
    );
  }
}

