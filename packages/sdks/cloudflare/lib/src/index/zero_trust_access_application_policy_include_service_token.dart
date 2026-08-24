// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const ZeroTrustAccessApplicationPolicyIncludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeServiceToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
