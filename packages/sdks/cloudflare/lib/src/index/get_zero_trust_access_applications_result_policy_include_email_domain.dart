// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
