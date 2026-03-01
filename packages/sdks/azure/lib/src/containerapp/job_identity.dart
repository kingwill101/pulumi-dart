// ignore_for_file: unused_element, unnecessary_cast


class JobIdentity {
  /// A list of Managed Identity IDs to assign to the Container App Job.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// The type of identity used for the Container App Job. Possible values are `SystemAssigned`, `UserAssigned` and `None`.
  final String type;

  /// Creates a new [JobIdentity].
  /// [identityIds] A list of Managed Identity IDs to assign to the Container App Job.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] The type of identity used for the Container App Job. Possible values are `SystemAssigned`, `UserAssigned` and `None`.
  JobIdentity({
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

  factory JobIdentity.fromMap(Map<String, dynamic> map) {
    return JobIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

