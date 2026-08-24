// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [ZeroTrustAccessPolicyRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const ZeroTrustAccessPolicyRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory ZeroTrustAccessPolicyRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
