// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessPolicyIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
