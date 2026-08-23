// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of managed identity, specifically including type and resource ID.
class ManagedIdentityPropertiesResponse {
  /// The type of managed identity.
  final pulumi.Input<String> type;
  /// The resource id of the managed identity.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [ManagedIdentityPropertiesResponse].
  /// [type] The type of managed identity.
  /// [userAssignedIdentityResourceId] The resource id of the managed identity.
  const ManagedIdentityPropertiesResponse({
    required this.type,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory ManagedIdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityPropertiesResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
