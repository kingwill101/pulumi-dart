// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_config_idp_config_idp_certificate.dart';

class InboundSamlConfigIdpConfig {
  /// The IdP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// Structure is documented below.
  final pulumi.Input<List<InboundSamlConfigIdpConfigIdpCertificate>> idpCertificates;
  /// Unique identifier for all SAML entities
  final pulumi.Input<String> idpEntityId;
  /// Indicates if outbounding SAMLRequest should be signed.
  final pulumi.Input<bool?>? signRequest;
  /// URL to send Authentication request to.
  final pulumi.Input<String> ssoUrl;

  /// Creates a new [InboundSamlConfigIdpConfig].
  /// [idpCertificates] The IdP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// [idpEntityId] Unique identifier for all SAML entities
  /// [signRequest] Indicates if outbounding SAMLRequest should be signed.
  /// [ssoUrl] URL to send Authentication request to.
  const InboundSamlConfigIdpConfig({
    required this.idpCertificates,
    required this.idpEntityId,
    this.signRequest,
    required this.ssoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpCertificates': pulumi.Input.mapInputValue<List<InboundSamlConfigIdpConfigIdpCertificate>, List<Map<String, dynamic>>>(idpCertificates, (value) => pulumi.Input.encodeList<InboundSamlConfigIdpConfigIdpCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idpEntityId': idpEntityId,
      'signRequest': ?signRequest,
      'ssoUrl': ssoUrl,
    };
  }

  factory InboundSamlConfigIdpConfig.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigIdpConfig(
      idpCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<InboundSamlConfigIdpConfigIdpCertificate>(map['idpCertificates']!, (value) => InboundSamlConfigIdpConfigIdpCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      idpEntityId: pulumi.Input.fromValue(map['idpEntityId'] as String),
      signRequest: (() { final guardedValue = map['signRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssoUrl: pulumi.Input.fromValue(map['ssoUrl'] as String),
    );
  }
}
