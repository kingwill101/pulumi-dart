// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessGroupsResultIncludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
