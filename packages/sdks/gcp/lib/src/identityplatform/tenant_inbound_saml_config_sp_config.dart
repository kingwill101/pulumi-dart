// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_inbound_saml_config_sp_config_sp_certificate.dart';

class TenantInboundSamlConfigSpConfig {
  /// Callback URI where responses from IDP are handled. Must start with `https://`.
  final pulumi.Input<String> callbackUri;
  /// (Output)
  /// The IDP's certificate data to verify the signature in the SAMLResponse issued by the IDP.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedSpConfigSpCertificates"&gt;&lt;/a&gt;The `spCertificates` block contains:
  final pulumi.Input<List<TenantInboundSamlConfigSpConfigSpCertificate>>? spCertificates;
  /// Unique identifier for all SAML entities.
  final pulumi.Input<String> spEntityId;

  /// Creates a new [TenantInboundSamlConfigSpConfig].
  /// [callbackUri] Callback URI where responses from IDP are handled. Must start with `https://`.
  /// [spCertificates] (Output)
  /// [spEntityId] Unique identifier for all SAML entities.
  const TenantInboundSamlConfigSpConfig({
    required this.callbackUri,
    this.spCertificates,
    required this.spEntityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUri': callbackUri,
      'spCertificates': ?pulumi.Input.mapOptionalInputValue<List<TenantInboundSamlConfigSpConfigSpCertificate>, List<Map<String, dynamic>>>(spCertificates, (value) => pulumi.Input.encodeList<TenantInboundSamlConfigSpConfigSpCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spEntityId': spEntityId,
    };
  }

  factory TenantInboundSamlConfigSpConfig.fromMap(Map<String, dynamic> map) {
    return TenantInboundSamlConfigSpConfig(
      callbackUri: pulumi.Input.fromValue(map['callbackUri'] as String),
      spCertificates: (() { final guardedValue = map['spCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TenantInboundSamlConfigSpConfigSpCertificate>(guardedValue, (value) => TenantInboundSamlConfigSpConfigSpCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spEntityId: pulumi.Input.fromValue(map['spEntityId'] as String),
    );
  }
}
