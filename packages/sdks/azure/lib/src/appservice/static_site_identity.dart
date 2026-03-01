// ignore_for_file: unused_element, unnecessary_cast


class StaticSiteIdentity {
  /// A list of Managed Identity IDs which should be assigned to this Static Site resource.
  final List<String>? identityIds;
  /// (Optional) The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  final String? tenantId;
  /// The Type of Managed Identity assigned to this Static Site resource. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [StaticSiteIdentity].
  /// [identityIds] A list of Managed Identity IDs which should be assigned to this Static Site resource.
  /// [principalId] (Optional) The Principal ID associated with this Managed Service Identity.
  /// [tenantId] Optional.
  /// [type] The Type of Managed Identity assigned to this Static Site resource. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  StaticSiteIdentity({
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

  factory StaticSiteIdentity.fromMap(Map<String, dynamic> map) {
    return StaticSiteIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

