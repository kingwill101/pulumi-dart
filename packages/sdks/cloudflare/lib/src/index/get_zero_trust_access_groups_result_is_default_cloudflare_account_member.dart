// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
