// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessPoliciesResultExcludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
