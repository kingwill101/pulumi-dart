// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [GetZeroTrustAccessGroupRequireLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const GetZeroTrustAccessGroupRequireLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory GetZeroTrustAccessGroupRequireLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
