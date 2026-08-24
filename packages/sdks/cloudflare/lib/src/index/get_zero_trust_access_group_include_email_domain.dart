// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessGroupIncludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessGroupIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessGroupIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
