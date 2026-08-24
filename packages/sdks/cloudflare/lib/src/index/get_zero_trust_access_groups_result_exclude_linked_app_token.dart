// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultExcludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [GetZeroTrustAccessGroupsResultExcludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const GetZeroTrustAccessGroupsResultExcludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory GetZeroTrustAccessGroupsResultExcludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultExcludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
