// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStandardIdentity {
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final pulumi.Input<String> principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final pulumi.Input<String> tenantId;
  /// The Type of Managed Identity assigned to this Logic App Workflow.
  final pulumi.Input<String> type;

  /// Creates a new [GetStandardIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [type] The Type of Managed Identity assigned to this Logic App Workflow.
  GetStandardIdentity({
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

  factory GetStandardIdentity.fromMap(Map<String, dynamic> map) {
    return GetStandardIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

