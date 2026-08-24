// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [ZeroTrustAccessPolicyIncludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const ZeroTrustAccessPolicyIncludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory ZeroTrustAccessPolicyIncludeServiceToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
