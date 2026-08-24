// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessPoliciesResultIncludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
