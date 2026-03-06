// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFhirServiceAuthentication {
  /// The intended audience to receive authentication tokens for the service. The default value is `https://&lt;name&gt;.fhir.azurehealthcareapis.com`.
  final pulumi.Input<String> audience;
  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// Authority must be registered to Azure AD and in the following format: &lt;https://{Azure-AD-endpoint}/{tenant-id&gt;}.
  final pulumi.Input<String> authority;
  final pulumi.Input<bool> smartProxyEnabled;

  /// Creates a new [GetFhirServiceAuthentication].
  /// [audience] The intended audience to receive authentication tokens for the service. The default value is `https://&lt;name&gt;.fhir.azurehealthcareapis.com`.
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service. The default authority is the Directory defined in the authentication scheme in use when running Terraform.
  /// [smartProxyEnabled] Required.
  const GetFhirServiceAuthentication({
    required this.audience,
    required this.authority,
    required this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'authority': authority,
      'smartProxyEnabled': smartProxyEnabled,
    };
  }

  factory GetFhirServiceAuthentication.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceAuthentication(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      authority: pulumi.Input.fromValue(map['authority'] as String),
      smartProxyEnabled: pulumi.Input.fromValue(map['smartProxyEnabled'] as bool),
    );
  }
}

