// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_ssl_profile_ssl_policy.dart';

class GetApplicationGatewaySslProfile {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// a `ssl_policy` block as defined below.
  final pulumi.Input<List<GetApplicationGatewaySslProfileSslPolicy>> sslPolicies;
  /// The name of the Trusted Client Certificate that will be used to authenticate requests from clients.
  final pulumi.Input<List<String>> trustedClientCertificateNames;
  final pulumi.Input<bool> verifyClientCertificateIssuerDn;
  /// The method used to check client certificate revocation status.
  final pulumi.Input<String> verifyClientCertificateRevocation;

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
      'sslPolicies': pulumi.Input.mapInputValue<List<GetApplicationGatewaySslProfileSslPolicy>, List<Map<String, dynamic>>>(sslPolicies, (value) => pulumi.Input.encodeList<GetApplicationGatewaySslProfileSslPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedClientCertificateNames': trustedClientCertificateNames,
      'verifyClientCertificateIssuerDn': verifyClientCertificateIssuerDn,
      'verifyClientCertificateRevocation': verifyClientCertificateRevocation,
    };
  }

  factory GetApplicationGatewaySslProfile.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewaySslProfile(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      sslPolicies: (pulumi.Input.decodeList<GetApplicationGatewaySslProfileSslPolicy>(map['sslPolicies'], (value) => GetApplicationGatewaySslProfileSslPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustedClientCertificateNames: ((map['trustedClientCertificateNames'] as List).cast<String>()).input(),
      verifyClientCertificateIssuerDn: (map['verifyClientCertificateIssuerDn'] as bool).input(),
      verifyClientCertificateRevocation: (map['verifyClientCertificateRevocation'] as String).input(),
    );
  }
}

