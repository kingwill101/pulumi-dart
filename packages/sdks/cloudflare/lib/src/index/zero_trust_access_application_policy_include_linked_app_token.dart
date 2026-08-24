// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
