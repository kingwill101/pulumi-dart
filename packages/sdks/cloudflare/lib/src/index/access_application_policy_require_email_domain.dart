// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [AccessApplicationPolicyRequireEmailDomain].
  /// [domain] The email domain to match.
  const AccessApplicationPolicyRequireEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory AccessApplicationPolicyRequireEmailDomain.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
