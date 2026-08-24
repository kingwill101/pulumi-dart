// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessApplicationPolicyRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
