// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsv4_signature_compute_beta.dart';

/// The authentication and authorization settings for a BackendService.
class SecuritySettingsComputeBeta {
  /// [Deprecated] Use clientTlsPolicy instead.
  final pulumi.Input<String>? authentication;
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final pulumi.Input<AWSV4SignatureComputeBeta>? awsV4Authentication;
  /// Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  final pulumi.Input<String>? clientTlsPolicy;
  /// Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  final pulumi.Input<List<String>>? subjectAltNames;

  /// Creates a new [SecuritySettingsComputeBeta].
  /// [authentication] [Deprecated] Use clientTlsPolicy instead.
  /// [awsV4Authentication] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// [clientTlsPolicy] Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  /// [subjectAltNames] Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  SecuritySettingsComputeBeta({
    this.authentication,
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication,
      'awsV4Authentication': ?pulumi.Input.mapOptionalInputValue<AWSV4SignatureComputeBeta, Map<String, dynamic>>(awsV4Authentication, (value) => value.toMap()),
      'clientTlsPolicy': ?clientTlsPolicy,
      'subjectAltNames': ?subjectAltNames,
    };
  }

  factory SecuritySettingsComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsComputeBeta(
      authentication: map['authentication'] == null ? null : (map['authentication'] as String).input(),
      awsV4Authentication: map['awsV4Authentication'] == null ? null : (AWSV4SignatureComputeBeta.fromMap((map['awsV4Authentication'] as Map).cast<String, dynamic>())).input(),
      clientTlsPolicy: map['clientTlsPolicy'] == null ? null : (map['clientTlsPolicy'] as String).input(),
      subjectAltNames: map['subjectAltNames'] == null ? null : ((map['subjectAltNames'] as List).cast<String>()).input(),
    );
  }
}

