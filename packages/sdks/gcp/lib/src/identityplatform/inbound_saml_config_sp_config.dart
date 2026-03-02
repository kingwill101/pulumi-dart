// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_saml_config_sp_config_sp_certificate.dart';

class InboundSamlConfigSpConfig {
  /// Callback URI where responses from IDP are handled. Must start with `https://`.
  final pulumi.Input<String>? callbackUri;
  /// (Output)
  /// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_sp_config_sp_certificates"></a>The `sp_certificates` block contains:
  final pulumi.Input<List<InboundSamlConfigSpConfigSpCertificate>>? spCertificates;
  /// Unique identifier for all SAML entities.
  final pulumi.Input<String>? spEntityId;

  /// Creates a new [InboundSamlConfigSpConfig].
  /// [callbackUri] Callback URI where responses from IDP are handled. Must start with `https://`.
  /// [spCertificates] (Output)
  /// [spEntityId] Unique identifier for all SAML entities.
  InboundSamlConfigSpConfig({
    this.callbackUri,
    this.spCertificates,
    this.spEntityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUri': ?callbackUri,
      'spCertificates': ?pulumi.Input.mapOptionalInputValue<List<InboundSamlConfigSpConfigSpCertificate>, List<Map<String, dynamic>>>(spCertificates, (value) => pulumi.Input.encodeList<InboundSamlConfigSpConfigSpCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spEntityId': ?spEntityId,
    };
  }

  factory InboundSamlConfigSpConfig.fromMap(Map<String, dynamic> map) {
    return InboundSamlConfigSpConfig(
      callbackUri: map['callbackUri'] == null ? null : (map['callbackUri']! as String).input(),
      spCertificates: map['spCertificates'] == null ? null : (pulumi.Input.decodeList<InboundSamlConfigSpConfigSpCertificate>(map['spCertificates']!, (value) => InboundSamlConfigSpConfigSpCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spEntityId: map['spEntityId'] == null ? null : (map['spEntityId']! as String).input(),
    );
  }
}

