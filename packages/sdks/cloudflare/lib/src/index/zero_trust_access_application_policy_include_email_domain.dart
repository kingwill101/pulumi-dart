// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeEmailDomain].
  /// [domain] The email domain to match.
  const ZeroTrustAccessApplicationPolicyIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
