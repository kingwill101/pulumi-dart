// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstanceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Managed Instance. Required when `type` includes `UserAssigned`.
  ///
  /// &gt; **Note:** The assigned `principal_id` and `tenant_id` can be retrieved after the identity `type` has been set to `SystemAssigned` and SQL Managed Instance has been created.
  final pulumi.Input<List<String>>? identityIds;

  /// The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final pulumi.Input<String>? principalId;

  /// The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  final pulumi.Input<String>? tenantId;

  /// Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedInstanceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Managed Instance. Required when `type` includes `UserAssigned`.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this SQL Managed Instance.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this SQL Managed Instance. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  ManagedInstanceIdentity({
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

  factory ManagedInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceIdentity(
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
