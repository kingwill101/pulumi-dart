// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [AccessApplicationPolicyExcludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const AccessApplicationPolicyExcludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory AccessApplicationPolicyExcludeServiceToken.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
