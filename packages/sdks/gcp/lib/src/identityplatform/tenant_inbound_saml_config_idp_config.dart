// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_idp_config_idp_certificate.dart';

class TenantInboundSamlConfigIdpConfig {
  /// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// Structure is documented below.
  final pulumi.Input<List<TenantInboundSamlConfigIdpConfigIdpCertificate>> idpCertificates;
  /// Unique identifier for all SAML entities
  final pulumi.Input<String> idpEntityId;
  /// Indicates if outbounding SAMLRequest should be signed.
  final pulumi.Input<bool>? signRequest;
  /// URL to send Authentication request to.
  final pulumi.Input<String> ssoUrl;

  /// Creates a new [TenantInboundSamlConfigIdpConfig].
  /// [idpCertificates] The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// [idpEntityId] Unique identifier for all SAML entities
  /// [signRequest] Indicates if outbounding SAMLRequest should be signed.
  /// [ssoUrl] URL to send Authentication request to.
  TenantInboundSamlConfigIdpConfig({
    required this.idpCertificates,
    required this.idpEntityId,
    this.signRequest,
    required this.ssoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpCertificates': pulumi.Input.mapInputValue<List<TenantInboundSamlConfigIdpConfigIdpCertificate>, List<Map<String, dynamic>>>(idpCertificates, (value) => pulumi.Input.encodeList<TenantInboundSamlConfigIdpConfigIdpCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idpEntityId': idpEntityId,
      'signRequest': ?signRequest,
      'ssoUrl': ssoUrl,
    };
  }

  factory TenantInboundSamlConfigIdpConfig.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigIdpConfig(
      idpCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<TenantInboundSamlConfigIdpConfigIdpCertificate>(map['idpCertificates']!, (value) => TenantInboundSamlConfigIdpConfigIdpCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      idpEntityId: pulumi.Input.fromValue(map['idpEntityId'] as String),
      signRequest: (() { final guardedValue = map['signRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ssoUrl: pulumi.Input.fromValue(map['ssoUrl'] as String),
    );
  }
}

