// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessGroupIsDefaultEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
