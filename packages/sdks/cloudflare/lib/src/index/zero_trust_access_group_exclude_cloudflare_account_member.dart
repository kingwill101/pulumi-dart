// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [ZeroTrustAccessGroupExcludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const ZeroTrustAccessGroupExcludeCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory ZeroTrustAccessGroupExcludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
