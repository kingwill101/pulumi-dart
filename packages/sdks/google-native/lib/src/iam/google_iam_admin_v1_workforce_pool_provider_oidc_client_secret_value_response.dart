// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of the value of the client secret.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse {
  /// Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  final pulumi.Input<String> plainText;
  /// A thumbprint to represent the current client secret value.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse].
  /// [plainText] Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  /// [thumbprint] A thumbprint to represent the current client secret value.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse({
    required this.plainText,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plainText': plainText,
      'thumbprint': thumbprint,
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse.fromMap(Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValueResponse(
      plainText: (map['plainText'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
    );
  }
}

