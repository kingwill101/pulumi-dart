// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ssl_profile_ssl_policy.dart';

class ApplicationGatewaySslProfile {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The name of the SSL Profile that is unique within this Application Gateway.
  final pulumi.Input<String> name;
  /// a `ssl_policy` block as defined below.
  final pulumi.Input<ApplicationGatewaySslProfileSslPolicy>? sslPolicy;
  /// The name of the Trusted Client Certificate that will be used to authenticate requests from clients.
  final pulumi.Input<List<String>>? trustedClientCertificateNames;
  /// Should client certificate issuer DN be verified? Defaults to `false`.
  final pulumi.Input<bool>? verifyClientCertIssuerDn;
  /// Specify the method to check client certificate revocation status. Possible value is `OCSP`.
  final pulumi.Input<String>? verifyClientCertificateRevocation;

  /// Creates a new [ApplicationGatewaySslProfile].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the SSL Profile that is unique within this Application Gateway.
  /// [sslPolicy] a `ssl_policy` block as defined below.
  /// [trustedClientCertificateNames] The name of the Trusted Client Certificate that will be used to authenticate requests from clients.
  /// [verifyClientCertIssuerDn] Should client certificate issuer DN be verified? Defaults to `false`.
  /// [verifyClientCertificateRevocation] Specify the method to check client certificate revocation status. Possible value is `OCSP`.
  ApplicationGatewaySslProfile({
    this.id,
    required this.name,
    this.sslPolicy,
    this.trustedClientCertificateNames,
    this.verifyClientCertIssuerDn,
    this.verifyClientCertificateRevocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'sslPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySslProfileSslPolicy, Map<String, dynamic>>(sslPolicy, (value) => value.toMap()),
      'trustedClientCertificateNames': ?trustedClientCertificateNames,
      'verifyClientCertIssuerDn': ?verifyClientCertIssuerDn,
      'verifyClientCertificateRevocation': ?verifyClientCertificateRevocation,
    };
  }

  factory ApplicationGatewaySslProfile.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslProfile(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (ApplicationGatewaySslProfileSslPolicy.fromMap((map['sslPolicy'] as Map).cast<String, dynamic>())).input(),
      trustedClientCertificateNames: map['trustedClientCertificateNames'] == null ? null : ((map['trustedClientCertificateNames'] as List).cast<String>()).input(),
      verifyClientCertIssuerDn: map['verifyClientCertIssuerDn'] == null ? null : (map['verifyClientCertIssuerDn'] as bool).input(),
      verifyClientCertificateRevocation: map['verifyClientCertificateRevocation'] == null ? null : (map['verifyClientCertificateRevocation'] as String).input(),
    );
  }
}

