// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [AccessGroupExcludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const AccessGroupExcludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory AccessGroupExcludeServiceToken.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
