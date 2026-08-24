// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
