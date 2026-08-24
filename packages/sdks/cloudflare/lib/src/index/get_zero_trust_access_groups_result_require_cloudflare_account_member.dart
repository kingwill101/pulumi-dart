// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessGroupsResultRequireCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
