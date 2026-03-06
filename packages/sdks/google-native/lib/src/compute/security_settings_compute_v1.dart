// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsv4_signature_compute_v1.dart';

/// The authentication and authorization settings for a BackendService.
class SecuritySettingsComputeV1 {
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final pulumi.Input<AWSV4SignatureComputeV1>? awsV4Authentication;
  /// Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  final pulumi.Input<String>? clientTlsPolicy;
  /// Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  final pulumi.Input<List<String>>? subjectAltNames;

  /// Creates a new [SecuritySettingsComputeV1].
  /// [awsV4Authentication] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication. Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// [clientTlsPolicy] Optional. A URL referring to a networksecurity.ClientTlsPolicy resource that describes how clients should authenticate with this service's backends. clientTlsPolicy only applies to a global BackendService with the loadBalancingScheme set to INTERNAL_SELF_MANAGED. If left blank, communications are not encrypted.
  /// [subjectAltNames] Optional. A list of Subject Alternative Names (SANs) that the client verifies during a mutual TLS handshake with an server/endpoint for this BackendService. When the server presents its X.509 certificate to the client, the client inspects the certificate's subjectAltName field. If the field contains one of the specified values, the communication continues. Otherwise, it fails. This additional check enables the client to verify that the server is authorized to run the requested service. Note that the contents of the server certificate's subjectAltName field are configured by the Public Key Infrastructure which provisions server identities. Only applies to a global BackendService with loadBalancingScheme set to INTERNAL_SELF_MANAGED. Only applies when BackendService has an attached clientTlsPolicy with clientCertificate (mTLS mode).
  const SecuritySettingsComputeV1({
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsV4Authentication': ?pulumi.Input.mapOptionalInputValue<AWSV4SignatureComputeV1, Map<String, dynamic>>(awsV4Authentication, (value) => value.toMap()),
      'clientTlsPolicy': ?clientTlsPolicy,
      'subjectAltNames': ?subjectAltNames,
    };
  }

  factory SecuritySettingsComputeV1.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsComputeV1(
      awsV4Authentication: (() { final guardedValue = map['awsV4Authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AWSV4SignatureComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientTlsPolicy: (() { final guardedValue = map['clientTlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAltNames: (() { final guardedValue = map['subjectAltNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

