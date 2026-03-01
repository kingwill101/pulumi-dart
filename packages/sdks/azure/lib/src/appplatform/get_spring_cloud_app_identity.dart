// ignore_for_file: unused_element, unnecessary_cast


class GetSpringCloudAppIdentity {
  final List<String> identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  final String principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  final String tenantId;
  /// The Type of Managed Identity assigned to the Spring Cloud Application.
  final String type;

  /// Creates a new [GetSpringCloudAppIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Spring Cloud Application.
  /// [type] The Type of Managed Identity assigned to the Spring Cloud Application.
  GetSpringCloudAppIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetSpringCloudAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

