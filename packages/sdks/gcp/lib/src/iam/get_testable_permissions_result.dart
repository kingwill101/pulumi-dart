// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_testable_permissions_permission.dart';

/// Result data returned by getTestablePermissions.
class GetTestablePermissionsResult {
  /// The the support level of this permission for custom roles.
  final String? customSupportLevel;
  final String? fullResourceName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of permissions matching the provided input. Structure is defined below.
  final List<GetTestablePermissionsPermission>? permissions;
  final List<String>? stages;

  /// Creates a new [GetTestablePermissionsResult].
  /// [customSupportLevel] The the support level of this permission for custom roles.
  /// [fullResourceName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [permissions] A list of permissions matching the provided input. Structure is defined below.
  /// [stages] Optional.
  const GetTestablePermissionsResult({
    this.customSupportLevel,
    this.fullResourceName,
    this.id,
    this.permissions,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSupportLevel': ?customSupportLevel,
      'fullResourceName': ?fullResourceName,
      'id': ?id,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTestablePermissionsPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'stages': ?stages,
    };
  }

  factory GetTestablePermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsResult(
      customSupportLevel: (() { final guardedValue = map['customSupportLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fullResourceName: (() { final guardedValue = map['fullResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTestablePermissionsPermission>(guardedValue, (value) => GetTestablePermissionsPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
