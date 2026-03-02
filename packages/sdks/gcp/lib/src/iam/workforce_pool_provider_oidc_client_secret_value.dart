// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkforcePoolProviderOidcClientSecretValue {
  /// The plain text of the client secret value.
  final pulumi.Input<String> plainText;
  /// (Output)
  /// A thumbprint to represent the current client secret value.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [WorkforcePoolProviderOidcClientSecretValue].
  /// [plainText] The plain text of the client secret value.
  /// [thumbprint] (Output)
  WorkforcePoolProviderOidcClientSecretValue({
    required this.plainText,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plainText': plainText,
      'thumbprint': ?thumbprint,
    };
  }

  factory WorkforcePoolProviderOidcClientSecretValue.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderOidcClientSecretValue(
      plainText: (map['plainText'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

