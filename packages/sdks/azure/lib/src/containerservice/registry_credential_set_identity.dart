// ignore_for_file: unused_element, unnecessary_cast


class RegistryCredentialSetIdentity {
  /// The principal ID of the Identity.
  final String? principalId;
  /// The tenant ID of the Identity.
  final String? tenantId;
  /// The type of Managed Service Identity that is configured on for the Container Registry Credential Set. Currently the only possible value is `SystemAssigned`.
  final String type;

  /// Creates a new [RegistryCredentialSetIdentity].
  /// [principalId] The principal ID of the Identity.
  /// [tenantId] The tenant ID of the Identity.
  /// [type] The type of Managed Service Identity that is configured on for the Container Registry Credential Set. Currently the only possible value is `SystemAssigned`.
  RegistryCredentialSetIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory RegistryCredentialSetIdentity.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialSetIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

