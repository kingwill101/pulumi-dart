// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [AccessApplicationPolicyIncludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const AccessApplicationPolicyIncludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory AccessApplicationPolicyIncludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
