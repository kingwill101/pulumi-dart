// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MedtechServiceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.
  final pulumi.Input<List<String>>? identityIds;

  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final pulumi.Input<String>? principalId;

  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final pulumi.Input<String>? tenantId;

  /// Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [MedtechServiceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Healthcare Med Tech Service.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Healthcare Med Tech Service. Possible values are `SystemAssigned`.
  MedtechServiceIdentity({
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

  factory MedtechServiceIdentity.fromMap(Map<String, dynamic> map) {
    return MedtechServiceIdentity(
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
