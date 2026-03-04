// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned`
  final pulumi.Input<List<String>>? identityIds;

  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final pulumi.Input<String>? principalId;

  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final pulumi.Input<String>? tenantId;

  /// Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are `SystemAssigned`, `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [WorkflowIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are `SystemAssigned`, `UserAssigned`.
  WorkflowIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory WorkflowIdentity.fromMap(Map<String, dynamic> map) {
    return WorkflowIdentity(
      identityIds: (() {
        final guardedValue = map['identityIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
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
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
