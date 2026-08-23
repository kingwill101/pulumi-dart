// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkspaceManagedDiskIdentity {
  /// The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  final pulumi.Input<String> principalId;
  /// The UUID of the tenant where the internal databricks storage account was created.
  final pulumi.Input<String> tenantId;
  /// The type of the internal databricks storage account.
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkspaceManagedDiskIdentity].
  /// [principalId] The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  /// [tenantId] The UUID of the tenant where the internal databricks storage account was created.
  /// [type] The type of the internal databricks storage account.
  const GetWorkspaceManagedDiskIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetWorkspaceManagedDiskIdentity.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagedDiskIdentity(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
