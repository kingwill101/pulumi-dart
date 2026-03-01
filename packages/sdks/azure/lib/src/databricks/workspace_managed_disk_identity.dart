// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceManagedDiskIdentity {
  /// The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  final String? principalId;
  /// The UUID of the tenant where the internal databricks storage account was created.
  final String? tenantId;
  /// The type of the internal databricks storage account.
  final String? type;

  /// Creates a new [WorkspaceManagedDiskIdentity].
  /// [principalId] The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  /// [tenantId] The UUID of the tenant where the internal databricks storage account was created.
  /// [type] The type of the internal databricks storage account.
  WorkspaceManagedDiskIdentity({
    this.principalId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory WorkspaceManagedDiskIdentity.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagedDiskIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

