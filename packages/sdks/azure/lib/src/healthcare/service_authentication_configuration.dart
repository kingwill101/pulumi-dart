// ignore_for_file: unused_element, unnecessary_cast


class ServiceAuthenticationConfiguration {
  /// The intended audience to receive authentication tokens for the service. The default value is https://azurehealthcareapis.com
  final String? audience;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running this provider.
  /// Authority must be registered to Azure AD and in the following format: https://{Azure-AD-endpoint}/{tenant-id}.
  final String? authority;
  /// (Boolean) Enables the 'SMART on FHIR' option for mobile and web implementations.
  final bool? smartProxyEnabled;

  /// Creates a new [ServiceAuthenticationConfiguration].
  /// [audience] The intended audience to receive authentication tokens for the service. The default value is https://azurehealthcareapis.com
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running this provider.
  /// [smartProxyEnabled] (Boolean) Enables the 'SMART on FHIR' option for mobile and web implementations.
  ServiceAuthenticationConfiguration({
    this.audience,
    this.authority,
    this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'authority': ?authority,
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory ServiceAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceAuthenticationConfiguration(
      audience: map['audience'] == null ? null : map['audience'] as String,
      authority: map['authority'] == null ? null : map['authority'] as String,
      smartProxyEnabled: map['smartProxyEnabled'] == null ? null : map['smartProxyEnabled'] as bool,
    );
  }
}

