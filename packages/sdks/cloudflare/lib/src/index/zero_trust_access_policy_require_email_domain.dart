// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [ZeroTrustAccessPolicyRequireEmailDomain].
  /// [domain] The email domain to match.
  const ZeroTrustAccessPolicyRequireEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory ZeroTrustAccessPolicyRequireEmailDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
