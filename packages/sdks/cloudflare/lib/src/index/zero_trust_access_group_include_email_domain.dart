// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [ZeroTrustAccessGroupIncludeEmailDomain].
  /// [domain] The email domain to match.
  const ZeroTrustAccessGroupIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory ZeroTrustAccessGroupIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
