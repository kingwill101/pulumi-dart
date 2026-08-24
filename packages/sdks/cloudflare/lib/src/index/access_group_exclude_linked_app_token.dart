// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [AccessGroupExcludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const AccessGroupExcludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory AccessGroupExcludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
