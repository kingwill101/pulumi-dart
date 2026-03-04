// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupIdentity {
  /// A list of the User Assigned Identity IDs that should be assigned to this Elastic SAN Volume Group.
  final pulumi.Input<List<String>>? identityIds;

  /// The Principal ID associated with the Managed Service Identity assigned to this Elastic SAN Volume Group.
  final pulumi.Input<String>? principalId;

  /// The Tenant ID associated with this Managed Service Identity assigned to this Elastic SAN Volume Group.
  final pulumi.Input<String>? tenantId;

  /// Specifies the type of Managed Identity that should be assigned to this Elastic SAN Volume Group. Possible values are `SystemAssigned` and `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [VolumeGroupIdentity].
  /// [identityIds] A list of the User Assigned Identity IDs that should be assigned to this Elastic SAN Volume Group.
  /// [principalId] The Principal ID associated with the Managed Service Identity assigned to this Elastic SAN Volume Group.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity assigned to this Elastic SAN Volume Group.
  /// [type] Specifies the type of Managed Identity that should be assigned to this Elastic SAN Volume Group. Possible values are `SystemAssigned` and `UserAssigned`.
  VolumeGroupIdentity({
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

  factory VolumeGroupIdentity.fromMap(Map<String, dynamic> map) {
    return VolumeGroupIdentity(
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
