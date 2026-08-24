// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [ZeroTrustAccessGroupRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const ZeroTrustAccessGroupRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory ZeroTrustAccessGroupRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
