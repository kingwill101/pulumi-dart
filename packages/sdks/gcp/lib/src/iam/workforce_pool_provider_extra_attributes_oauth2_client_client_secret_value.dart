// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue {
  /// The plain text of the client secret value.
  final pulumi.Input<String> plainText;
  /// (Output)
  /// A thumbprint to represent the current client secret value.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue].
  /// [plainText] The plain text of the client secret value.
  /// [thumbprint] (Output)
  WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue({
    required this.plainText,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plainText': plainText,
      'thumbprint': ?thumbprint,
    };
  }

  factory WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue(
      plainText: pulumi.Input.fromValue(map['plainText'] as String),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

