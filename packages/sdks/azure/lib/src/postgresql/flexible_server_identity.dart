// ignore_for_file: unused_element, unnecessary_cast


class FlexibleServerIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this PostgreSQL Flexible Server. Required if used together with `customer_managed_key` block.
  ///
  /// > **Note:** `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this PostgreSQL Flexible Server. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`.
  ///
  /// > **Note:** Once `UserAssigned` has been added, removing it forces a new resource to be created.
  final String type;

  /// Creates a new [FlexibleServerIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this PostgreSQL Flexible Server. Required if used together with `customer_managed_key` block.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this PostgreSQL Flexible Server. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`.
  FlexibleServerIdentity({
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

  factory FlexibleServerIdentity.fromMap(Map<String, dynamic> map) {
    return FlexibleServerIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

