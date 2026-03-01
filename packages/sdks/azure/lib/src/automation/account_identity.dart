// ignore_for_file: unused_element, unnecessary_cast


class AccountIdentity {
  /// The ID of the User Assigned Identity which should be assigned to this Automation Account.
  ///
  /// > **Note:** `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// The type of identity used for this Automation Account. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

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
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

