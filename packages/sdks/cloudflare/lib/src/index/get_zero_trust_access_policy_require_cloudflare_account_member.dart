// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessPolicyRequireCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessPolicyRequireCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessPolicyRequireCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
