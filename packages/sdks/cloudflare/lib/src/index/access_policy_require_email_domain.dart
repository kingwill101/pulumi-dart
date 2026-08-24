// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyRequireEmailDomain {
  /// The email domain to match.
  final pulumi.Input<String> domain;

  /// Creates a new [AccessPolicyRequireEmailDomain].
  /// [domain] The email domain to match.
  const AccessPolicyRequireEmailDomain({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory AccessPolicyRequireEmailDomain.fromMap(Map<String, dynamic> map) {
    return AccessPolicyRequireEmailDomain(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
