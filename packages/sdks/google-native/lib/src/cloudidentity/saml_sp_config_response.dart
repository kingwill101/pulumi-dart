// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SAML SP (service provider) configuration.
class SamlSpConfigResponse {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  final pulumi.Input<String> assertionConsumerServiceUri;

  /// The SAML **Entity ID** for this service provider.
  final pulumi.Input<String> entityId;

  /// Creates a new [SamlSpConfigResponse].
  /// [assertionConsumerServiceUri] The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  /// [entityId] The SAML **Entity ID** for this service provider.
  SamlSpConfigResponse({
    required this.assertionConsumerServiceUri,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionConsumerServiceUri': assertionConsumerServiceUri,
      'entityId': entityId,
    };
  }

  factory SamlSpConfigResponse.fromMap(Map<String, dynamic> map) {
    return SamlSpConfigResponse(
      assertionConsumerServiceUri: pulumi.Input.fromValue(
        map['assertionConsumerServiceUri'] as String,
      ),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
    );
  }
}
