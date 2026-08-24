// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
