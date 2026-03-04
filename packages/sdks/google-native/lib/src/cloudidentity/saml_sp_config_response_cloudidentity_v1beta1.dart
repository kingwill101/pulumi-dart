// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SAML SP (service provider) configuration.
class SamlSpConfigResponseCloudidentityV1beta1 {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  final pulumi.Input<String> assertionConsumerServiceUri;

  /// The SAML **Entity ID** for this service provider.
  final pulumi.Input<String> entityId;

  /// Creates a new [SamlSpConfigResponseCloudidentityV1beta1].
  /// [assertionConsumerServiceUri] The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  /// [entityId] The SAML **Entity ID** for this service provider.
  SamlSpConfigResponseCloudidentityV1beta1({
    required this.assertionConsumerServiceUri,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionConsumerServiceUri': assertionConsumerServiceUri,
      'entityId': entityId,
    };
  }

  factory SamlSpConfigResponseCloudidentityV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SamlSpConfigResponseCloudidentityV1beta1(
      assertionConsumerServiceUri: pulumi.Input.fromValue(
        map['assertionConsumerServiceUri'] as String,
      ),
      entityId: pulumi.Input.fromValue(map['entityId'] as String),
    );
  }
}
