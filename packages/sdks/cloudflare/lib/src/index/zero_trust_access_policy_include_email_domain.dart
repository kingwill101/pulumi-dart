// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [ZeroTrustAccessPolicyIncludeEmailDomain].
  /// [domain] The email domain to match.
  const ZeroTrustAccessPolicyIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory ZeroTrustAccessPolicyIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
