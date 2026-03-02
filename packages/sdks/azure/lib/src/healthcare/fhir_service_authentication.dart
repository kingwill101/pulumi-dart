// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirServiceAuthentication {
  /// The intended audience to receive authentication tokens for the service.
  final pulumi.Input<String> audience;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// Authority must be registered to Azure AD and in the following format: <https://{Azure-AD-endpoint}/{tenant-id>}.
  final pulumi.Input<String> authority;
  /// Whether smart proxy is enabled.
  final pulumi.Input<bool>? smartProxyEnabled;

  /// Creates a new [FhirServiceAuthentication].
  /// [audience] The intended audience to receive authentication tokens for the service.
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// [smartProxyEnabled] Whether smart proxy is enabled.
  FhirServiceAuthentication({
    required this.audience,
    required this.authority,
    this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'authority': authority,
      'smartProxyEnabled': ?smartProxyEnabled,
    };
  }

  factory FhirServiceAuthentication.fromMap(Map<String, dynamic> map) {
    return FhirServiceAuthentication(
      audience: (map['audience'] as String).input(),
      authority: (map['authority'] as String).input(),
      smartProxyEnabled: map['smartProxyEnabled'] == null ? null : (map['smartProxyEnabled'] as bool).input(),
    );
  }
}

