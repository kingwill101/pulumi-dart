// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyExcludeEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyExcludeEmailDomain].
  /// [domain] The email domain to match.
  const GetZeroTrustAccessApplicationsResultPolicyExcludeEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyExcludeEmailDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyExcludeEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
