// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
