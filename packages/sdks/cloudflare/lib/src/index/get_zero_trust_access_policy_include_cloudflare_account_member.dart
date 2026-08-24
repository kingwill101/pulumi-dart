// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessPolicyIncludeCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
