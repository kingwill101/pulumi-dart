// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultExcludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessGroupsResultExcludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessGroupsResultExcludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessGroupsResultExcludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultExcludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
