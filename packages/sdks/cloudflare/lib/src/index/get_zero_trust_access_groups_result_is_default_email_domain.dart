// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessGroupsResultIsDefaultEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
