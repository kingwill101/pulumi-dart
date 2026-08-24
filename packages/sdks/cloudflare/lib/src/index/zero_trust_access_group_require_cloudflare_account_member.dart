// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [ZeroTrustAccessGroupRequireCloudflareAccountMember].
  /// [accountId] Identifier.
  const ZeroTrustAccessGroupRequireCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory ZeroTrustAccessGroupRequireCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
