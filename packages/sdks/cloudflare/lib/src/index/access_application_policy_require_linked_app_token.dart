// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [AccessApplicationPolicyRequireLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const AccessApplicationPolicyRequireLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory AccessApplicationPolicyRequireLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
