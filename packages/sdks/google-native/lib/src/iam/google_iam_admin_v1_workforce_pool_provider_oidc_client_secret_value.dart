// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of the value of the client secret.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue {
  /// Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  final pulumi.Input<String>? plainText;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue].
  /// [plainText] Input only. The plain text of the client secret value. For security reasons, this field is only used for input and will never be populated in any response.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue({
    this.plainText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plainText': ?plainText,
    };
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue.fromMap(Map<String, dynamic> map) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue(
      plainText: (() { final guardedValue = map['plainText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

