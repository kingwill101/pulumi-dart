// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that specify the permission allowed to a managed identity
class StorageDataShareAccessPolicy {
  /// Allowed permissions. Currently, only supported value is Read.
  final pulumi.Input<dynamic> permission;
  /// The AAD principal ID of the Managed Identity.
  final pulumi.Input<String> principalId;
  /// The AAD tenant ID of the Managed Identity.
  final pulumi.Input<String> tenantId;

  /// Creates a new [StorageDataShareAccessPolicy].
  /// [permission] Allowed permissions. Currently, only supported value is Read.
  /// [principalId] The AAD principal ID of the Managed Identity.
  /// [tenantId] The AAD tenant ID of the Managed Identity.
  const StorageDataShareAccessPolicy({
    required this.permission,
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permission': permission,
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory StorageDataShareAccessPolicy.fromMap(Map<String, dynamic> map) {
    return StorageDataShareAccessPolicy(
      permission: pulumi.Input.fromValue(map['permission']),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
