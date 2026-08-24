// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeEmailDomain].
  /// [domain] The email domain to match.
  const ZeroTrustAccessApplicationPolicyExcludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
