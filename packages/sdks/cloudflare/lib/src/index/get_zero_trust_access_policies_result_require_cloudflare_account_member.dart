// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessPoliciesResultRequireCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
