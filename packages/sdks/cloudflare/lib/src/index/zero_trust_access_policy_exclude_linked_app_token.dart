// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [ZeroTrustAccessPolicyExcludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const ZeroTrustAccessPolicyExcludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory ZeroTrustAccessPolicyExcludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
