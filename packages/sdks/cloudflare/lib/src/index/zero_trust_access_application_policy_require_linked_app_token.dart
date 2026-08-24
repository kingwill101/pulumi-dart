// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const ZeroTrustAccessApplicationPolicyRequireLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
