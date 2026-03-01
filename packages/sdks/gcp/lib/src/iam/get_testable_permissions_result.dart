// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_testable_permissions_permission.dart';

/// Result data returned by getTestablePermissions.
class GetTestablePermissionsResult {
  /// The the support level of this permission for custom roles.
  final String? customSupportLevel;
  final String fullResourceName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of permissions matching the provided input. Structure is defined below.
  final List<GetTestablePermissionsPermission> permissions;
  final List<String>? stages;

  /// Creates a new [GetTestablePermissionsResult].
  /// [customSupportLevel] The the support level of this permission for custom roles.
  /// [fullResourceName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [permissions] A list of permissions matching the provided input. Structure is defined below.
  /// [stages] Optional.
  GetTestablePermissionsResult({
    this.customSupportLevel,
    required this.fullResourceName,
    required this.id,
    required this.permissions,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSupportLevel': ?customSupportLevel,
      'fullResourceName': fullResourceName,
      'id': id,
      'permissions': pulumi.Input.encodeList<GetTestablePermissionsPermission, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'stages': ?stages,
    };
  }

  factory GetTestablePermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsResult(
      customSupportLevel: map['customSupportLevel'] == null ? null : map['customSupportLevel'] as String,
      fullResourceName: map['fullResourceName'] as String,
      id: map['id'] as String,
      permissions: pulumi.Input.decodeList<GetTestablePermissionsPermission>(map['permissions'], (value) => GetTestablePermissionsPermission.fromMap((value as Map).cast<String, dynamic>())),
      stages: map['stages'] == null ? null : (map['stages'] as List).cast<String>(),
    );
  }
}

