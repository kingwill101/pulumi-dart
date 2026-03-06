// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The represent of missing permissions
class PermissionsMissingDryrunPrerequisiteResultResponse {
  /// The permission list
  final pulumi.Input<List<String>>? permissions;
  /// The recommended role to resolve permissions missing
  final pulumi.Input<String>? recommendedRole;
  /// The permission scope
  final pulumi.Input<String>? scope;
  /// The type of dryrun result.
  /// Expected value is 'permissionsMissing'.
  final pulumi.Input<String> type;

  /// Creates a new [PermissionsMissingDryrunPrerequisiteResultResponse].
  /// [permissions] The permission list
  /// [recommendedRole] The recommended role to resolve permissions missing
  /// [scope] The permission scope
  /// [type] The type of dryrun result.
  const PermissionsMissingDryrunPrerequisiteResultResponse({
    this.permissions,
    this.recommendedRole,
    this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'recommendedRole': ?recommendedRole,
      'scope': ?scope,
      'type': type,
    };
  }

  factory PermissionsMissingDryrunPrerequisiteResultResponse.fromMap(Map<String, dynamic> map) {
    return PermissionsMissingDryrunPrerequisiteResultResponse(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      recommendedRole: (() { final guardedValue = map['recommendedRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

