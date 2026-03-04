// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountIdentity {
  /// The ID of the User Assigned Identity which should be assigned to this Automation Account.
  ///
  /// &gt; **Note:** `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;

  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;

  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;

  /// The type of identity used for this Automation Account. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [AccountIdentity].
  /// [identityIds] The ID of the User Assigned Identity which should be assigned to this Automation Account.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The type of identity used for this Automation Account. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  AccountIdentity({
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

  factory AccountIdentity.fromMap(Map<String, dynamic> map) {
    return AccountIdentity(
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
