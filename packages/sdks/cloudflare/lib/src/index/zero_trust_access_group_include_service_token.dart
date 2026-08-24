// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [ZeroTrustAccessGroupIncludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const ZeroTrustAccessGroupIncludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory ZeroTrustAccessGroupIncludeServiceToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
