// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyIncludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessApplicationPolicyIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
