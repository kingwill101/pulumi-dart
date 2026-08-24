// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const ZeroTrustAccessApplicationPolicyRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
