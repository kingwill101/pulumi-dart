// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessPoliciesResultRequireEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
