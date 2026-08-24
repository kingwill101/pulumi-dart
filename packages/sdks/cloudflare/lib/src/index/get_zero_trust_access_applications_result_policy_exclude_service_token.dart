// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyExcludeServiceToken {
  /// The ID of a Service Token.
  final pulumi.Input<String> tokenId;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyExcludeServiceToken].
  /// [tokenId] The ID of a Service Token.
  const GetZeroTrustAccessApplicationsResultPolicyExcludeServiceToken({
    required this.tokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenId': tokenId,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyExcludeServiceToken.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyExcludeServiceToken(
      tokenId: pulumi.Input.fromValue(map['tokenId'] as String),
    );
  }
}
