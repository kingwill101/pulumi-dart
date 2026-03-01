// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_ssl_profile_ssl_policy.dart';

class GetApplicationGatewaySslProfile {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// a `ssl_policy` block as defined below.
  final List<GetApplicationGatewaySslProfileSslPolicy> sslPolicies;
  /// The name of the Trusted Client Certificate that will be used to authenticate requests from clients.
  final List<String> trustedClientCertificateNames;
  final bool verifyClientCertificateIssuerDn;
  /// The method used to check client certificate revocation status.
  final String verifyClientCertificateRevocation;

  /// Creates a new [GetApplicationGatewaySslProfile].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [sslPolicies] a `ssl_policy` block as defined below.
  /// [trustedClientCertificateNames] The name of the Trusted Client Certificate that will be used to authenticate requests from clients.
  /// [verifyClientCertificateIssuerDn] Required.
  /// [verifyClientCertificateRevocation] The method used to check client certificate revocation status.
  GetApplicationGatewaySslProfile({
    required this.id,
    required this.name,
    required this.sslPolicies,
    required this.trustedClientCertificateNames,
    required this.verifyClientCertificateIssuerDn,
    required this.verifyClientCertificateRevocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'sslPolicies': pulumi.Input.encodeList<GetApplicationGatewaySslProfileSslPolicy, Map<String, dynamic>>(sslPolicies, (value) => value.toMap()),
      'trustedClientCertificateNames': trustedClientCertificateNames,
      'verifyClientCertificateIssuerDn': verifyClientCertificateIssuerDn,
      'verifyClientCertificateRevocation': verifyClientCertificateRevocation,
    };
  }

  factory GetApplicationGatewaySslProfile.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewaySslProfile(
      id: map['id'] as String,
      name: map['name'] as String,
      sslPolicies: pulumi.Input.decodeList<GetApplicationGatewaySslProfileSslPolicy>(map['sslPolicies'], (value) => GetApplicationGatewaySslProfileSslPolicy.fromMap((value as Map).cast<String, dynamic>())),
      trustedClientCertificateNames: (map['trustedClientCertificateNames'] as List).cast<String>(),
      verifyClientCertificateIssuerDn: map['verifyClientCertificateIssuerDn'] as bool,
      verifyClientCertificateRevocation: map['verifyClientCertificateRevocation'] as String,
    );
  }
}

