// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a DNS certificate challenge.
class CertDnsChallengeResponse {
  /// The domain name upon which the DNS challenge must be satisfied.
  final pulumi.Input<String> domainName;

  /// The value that must be present as a TXT record on the domain name to satisfy the challenge.
  final pulumi.Input<String> token;

  /// Creates a new [CertDnsChallengeResponse].
  /// [domainName] The domain name upon which the DNS challenge must be satisfied.
  /// [token] The value that must be present as a TXT record on the domain name to satisfy the challenge.
  CertDnsChallengeResponse({required this.domainName, required this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domainName': domainName, 'token': token};
  }

  factory CertDnsChallengeResponse.fromMap(Map<String, dynamic> map) {
    return CertDnsChallengeResponse(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
