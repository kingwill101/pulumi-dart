// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessApplicationPolicyRequireEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
