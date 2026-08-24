// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessPolicyRequireEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessPolicyRequireEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessPolicyRequireEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
