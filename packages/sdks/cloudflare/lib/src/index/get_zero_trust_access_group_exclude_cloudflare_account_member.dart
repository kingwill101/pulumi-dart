// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustAccessGroupExcludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const GetZeroTrustAccessGroupExcludeCloudflareAccountMember({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustAccessGroupExcludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeCloudflareAccountMember(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
