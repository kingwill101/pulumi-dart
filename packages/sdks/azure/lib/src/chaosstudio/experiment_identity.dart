// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentIdentity {
  /// A list of User Managed Identity IDs which should be assigned to the Policy Definition.
  ///
  /// &gt; **Note:** This is required when `type` is set to `UserAssigned`.
  final pulumi.Input<List<String>?>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String?>? tenantId;
  /// The Type of Managed Identity which should be added to this Policy Definition. Possible values are `SystemAssigned` and `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ExperimentIdentity].
  /// [identityIds] A list of User Managed Identity IDs which should be assigned to the Policy Definition.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The Type of Managed Identity which should be added to this Policy Definition. Possible values are `SystemAssigned` and `UserAssigned`.
  const ExperimentIdentity({
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

  factory ExperimentIdentity.fromMap(Map<String, dynamic> map) {
    return ExperimentIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
