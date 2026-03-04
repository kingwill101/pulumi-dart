// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkspaceIdentity {
  final pulumi.Input<List<String>> identityIds;

  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  final pulumi.Input<String> principalId;

  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  final pulumi.Input<String> tenantId;

  /// The Identity Type for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkspaceIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  /// [type] The Identity Type for the Service Principal associated with the Managed Service Identity of this Synapse Workspace.
  GetWorkspaceIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetWorkspaceIdentity.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceIdentity(
      identityIds: pulumi.Input.fromValue(
        (map['identityIds'] as List).cast<String>(),
      ),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
