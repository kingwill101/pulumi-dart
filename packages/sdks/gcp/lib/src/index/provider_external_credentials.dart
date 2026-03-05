// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderExternalCredentials {
  final pulumi.Input<String> audience;
  final pulumi.Input<String> identityToken;
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [ProviderExternalCredentials].
  /// [audience] Required.
  /// [identityToken] Required.
  /// [serviceAccountEmail] Required.
  ProviderExternalCredentials({
    required this.audience,
    required this.identityToken,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'identityToken': identityToken,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory ProviderExternalCredentials.fromMap(Map<String, dynamic> map) {
    return ProviderExternalCredentials(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      identityToken: pulumi.Input.fromValue(map['identityToken'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
    );
  }
}

