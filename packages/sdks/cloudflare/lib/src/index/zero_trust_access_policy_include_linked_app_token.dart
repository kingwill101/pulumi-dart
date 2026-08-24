// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [ZeroTrustAccessPolicyIncludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const ZeroTrustAccessPolicyIncludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory ZeroTrustAccessPolicyIncludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
