// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [AccessApplicationPolicyExcludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const AccessApplicationPolicyExcludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory AccessApplicationPolicyExcludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
