// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkspaceStorageAccountIdentity {
  /// The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  final pulumi.Input<String> principalId;
  /// The UUID of the tenant where the internal databricks storage account was created.
  final pulumi.Input<String> tenantId;
  /// The type of the internal databricks storage account.
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkspaceStorageAccountIdentity].
  /// [principalId] The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  /// [tenantId] The UUID of the tenant where the internal databricks storage account was created.
  /// [type] The type of the internal databricks storage account.
  GetWorkspaceStorageAccountIdentity({
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

  factory GetWorkspaceStorageAccountIdentity.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceStorageAccountIdentity(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

