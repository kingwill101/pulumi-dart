// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [AccessPolicyExcludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const AccessPolicyExcludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory AccessPolicyExcludeServiceToken.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
