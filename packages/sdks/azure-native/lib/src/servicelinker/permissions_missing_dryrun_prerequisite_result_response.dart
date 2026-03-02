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
  PermissionsMissingDryrunPrerequisiteResultResponse({
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
      permissions: map['permissions'] == null ? null : ((map['permissions'] as List).cast<String>()).input(),
      recommendedRole: map['recommendedRole'] == null ? null : (map['recommendedRole'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

