// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [ZeroTrustAccessGroupExcludeEmailDomain].
  /// [domain] The email domain to match.
  const ZeroTrustAccessGroupExcludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory ZeroTrustAccessGroupExcludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
