// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
