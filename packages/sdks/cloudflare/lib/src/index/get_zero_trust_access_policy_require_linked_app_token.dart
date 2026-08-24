// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [GetZeroTrustAccessPolicyRequireLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const GetZeroTrustAccessPolicyRequireLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory GetZeroTrustAccessPolicyRequireLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
