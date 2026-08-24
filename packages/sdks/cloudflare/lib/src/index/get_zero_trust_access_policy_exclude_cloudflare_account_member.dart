// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyExcludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessPolicyExcludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessPolicyExcludeCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessPolicyExcludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExcludeCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
