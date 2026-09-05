// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirServiceIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned`.
  final pulumi.Input<List<String>?>? identityIds;
  final pulumi.Input<String?>? principalId;
  final pulumi.Input<String?>? tenantId;
  /// The type of managed identity to assign. Possible values are `UserAssigned` and `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [FhirServiceIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned`.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of managed identity to assign. Possible values are `UserAssigned` and `SystemAssigned`.
  const FhirServiceIdentity({
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

  factory FhirServiceIdentity.fromMap(Map<String, dynamic> map) {
    return FhirServiceIdentity(
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
