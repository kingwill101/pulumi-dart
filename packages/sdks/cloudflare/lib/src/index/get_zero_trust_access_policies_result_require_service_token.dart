// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessPoliciesResultRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
