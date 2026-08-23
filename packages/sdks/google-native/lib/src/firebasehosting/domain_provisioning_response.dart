// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_dns_challenge_response.dart';
import 'cert_http_challenge_response.dart';

/// The current certificate provisioning status information for a domain.
class DomainProvisioningResponse {
  /// The TXT records (for the certificate challenge) that were found at the last DNS fetch.
  final pulumi.Input<List<String>> certChallengeDiscoveredTxt;
  /// The DNS challenge for generating a certificate.
  final pulumi.Input<CertDnsChallengeResponse> certChallengeDns;
  /// The HTTP challenge for generating a certificate.
  final pulumi.Input<CertHttpChallengeResponse> certChallengeHttp;
  /// The certificate provisioning status; updated when Firebase Hosting provisions an SSL certificate for the domain.
  final pulumi.Input<String> certStatus;
  /// The IPs found at the last DNS fetch.
  final pulumi.Input<List<String>> discoveredIps;
  /// The time at which the last DNS fetch occurred.
  final pulumi.Input<String> dnsFetchTime;
  /// The DNS record match status as of the last DNS fetch.
  final pulumi.Input<String> dnsStatus;
  /// The list of IPs to which the domain is expected to resolve.
  final pulumi.Input<List<String>> expectedIps;

  /// Creates a new [DomainProvisioningResponse].
  /// [certChallengeDiscoveredTxt] The TXT records (for the certificate challenge) that were found at the last DNS fetch.
  /// [certChallengeDns] The DNS challenge for generating a certificate.
  /// [certChallengeHttp] The HTTP challenge for generating a certificate.
  /// [certStatus] The certificate provisioning status; updated when Firebase Hosting provisions an SSL certificate for the domain.
  /// [discoveredIps] The IPs found at the last DNS fetch.
  /// [dnsFetchTime] The time at which the last DNS fetch occurred.
  /// [dnsStatus] The DNS record match status as of the last DNS fetch.
  /// [expectedIps] The list of IPs to which the domain is expected to resolve.
  const DomainProvisioningResponse({
    required this.certChallengeDiscoveredTxt,
    required this.certChallengeDns,
    required this.certChallengeHttp,
    required this.certStatus,
    required this.discoveredIps,
    required this.dnsFetchTime,
    required this.dnsStatus,
    required this.expectedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certChallengeDiscoveredTxt': certChallengeDiscoveredTxt,
      'certChallengeDns': pulumi.Input.mapInputValue<CertDnsChallengeResponse, Map<String, dynamic>>(certChallengeDns, (value) => value.toMap()),
      'certChallengeHttp': pulumi.Input.mapInputValue<CertHttpChallengeResponse, Map<String, dynamic>>(certChallengeHttp, (value) => value.toMap()),
      'certStatus': certStatus,
      'discoveredIps': discoveredIps,
      'dnsFetchTime': dnsFetchTime,
      'dnsStatus': dnsStatus,
      'expectedIps': expectedIps,
    };
  }

  factory DomainProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return DomainProvisioningResponse(
      certChallengeDiscoveredTxt: pulumi.Input.fromValue((map['certChallengeDiscoveredTxt'] as List).cast<String>()),
      certChallengeDns: pulumi.Input.fromValue(CertDnsChallengeResponse.fromMap((map['certChallengeDns']! as Map).cast<String, dynamic>())),
      certChallengeHttp: pulumi.Input.fromValue(CertHttpChallengeResponse.fromMap((map['certChallengeHttp']! as Map).cast<String, dynamic>())),
      certStatus: pulumi.Input.fromValue(map['certStatus'] as String),
      discoveredIps: pulumi.Input.fromValue((map['discoveredIps'] as List).cast<String>()),
      dnsFetchTime: pulumi.Input.fromValue(map['dnsFetchTime'] as String),
      dnsStatus: pulumi.Input.fromValue(map['dnsStatus'] as String),
      expectedIps: pulumi.Input.fromValue((map['expectedIps'] as List).cast<String>()),
    );
  }
}
