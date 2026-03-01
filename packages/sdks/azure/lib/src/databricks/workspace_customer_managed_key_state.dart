// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceCustomerManagedKey resources.
class WorkspaceCustomerManagedKeyState {
  final pulumi.Input<String>? keyVaultKeyId;
  /// The unique identifier of the databricks workspace in Databricks control plane.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceCustomerManagedKeyState].
  /// [keyVaultKeyId] Optional.
  /// [workspaceId] The unique identifier of the databricks workspace in Databricks control plane.
  WorkspaceCustomerManagedKeyState({
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? workspaceId,
  }) :
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': ?keyVaultKeyId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomerManagedKeyState(
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

