// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyExcludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [GetZeroTrustAccessPolicyExcludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const GetZeroTrustAccessPolicyExcludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory GetZeroTrustAccessPolicyExcludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExcludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
