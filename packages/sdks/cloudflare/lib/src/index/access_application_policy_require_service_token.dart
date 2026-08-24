// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [AccessApplicationPolicyRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const AccessApplicationPolicyRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory AccessApplicationPolicyRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
