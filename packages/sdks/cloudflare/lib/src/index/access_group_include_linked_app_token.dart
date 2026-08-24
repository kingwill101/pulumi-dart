// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeLinkedAppToken {
  /// The ID of an Access OIDC SaaS application
  final pulumi.Input<String> appUid;

  /// Creates a new [AccessGroupIncludeLinkedAppToken].
  /// [appUid] The ID of an Access OIDC SaaS application
  const AccessGroupIncludeLinkedAppToken({
    required this.appUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appUid': appUid,
    };
  }

  factory AccessGroupIncludeLinkedAppToken.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeLinkedAppToken(
      appUid: pulumi.Input.fromValue(map['appUid'] as String),
    );
  }
}
