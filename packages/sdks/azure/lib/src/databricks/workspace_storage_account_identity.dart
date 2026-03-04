// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceStorageAccountIdentity {
  /// The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  final pulumi.Input<String>? principalId;

  /// The UUID of the tenant where the internal databricks storage account was created.
  final pulumi.Input<String>? tenantId;

  /// The type of the internal databricks storage account.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkspaceStorageAccountIdentity].
  /// [principalId] The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  /// [tenantId] The UUID of the tenant where the internal databricks storage account was created.
  /// [type] The type of the internal databricks storage account.
  WorkspaceStorageAccountIdentity({this.principalId, this.tenantId, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory WorkspaceStorageAccountIdentity.fromMap(Map<String, dynamic> map) {
    return WorkspaceStorageAccountIdentity(
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
