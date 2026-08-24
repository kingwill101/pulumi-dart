// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessGroupIsDefaultServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
