// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [AccessPolicyIncludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const AccessPolicyIncludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory AccessPolicyIncludeServiceToken.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
