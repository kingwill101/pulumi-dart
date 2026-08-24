// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyExcludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessPolicyExcludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessPolicyExcludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessPolicyExcludeServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExcludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
