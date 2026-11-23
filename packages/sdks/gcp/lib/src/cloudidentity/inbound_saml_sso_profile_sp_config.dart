// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InboundSamlSsoProfileSpConfig {
  /// (Output)
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated
  /// login. Assumed to accept response messages via the `HTTP-POST` binding.
  final pulumi.Input<String?>? assertionConsumerServiceUri;
  /// (Output)
  /// The SAML **Entity ID** for this service provider.
  final pulumi.Input<String?>? entityId;

  /// Creates a new [InboundSamlSsoProfileSpConfig].
  /// [assertionConsumerServiceUri] (Output)
  /// [entityId] (Output)
  const InboundSamlSsoProfileSpConfig({
    this.assertionConsumerServiceUri,
    this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionConsumerServiceUri': ?assertionConsumerServiceUri,
      'entityId': ?entityId,
    };
  }

  factory InboundSamlSsoProfileSpConfig.fromMap(Map<String, dynamic> map) {
    return InboundSamlSsoProfileSpConfig(
      assertionConsumerServiceUri: (() { final guardedValue = map['assertionConsumerServiceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityId: (() { final guardedValue = map['entityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
