// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [ZeroTrustAccessPolicyRequireCloudflareAccountMember].
  /// [accountId] Identifier.
  const ZeroTrustAccessPolicyRequireCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory ZeroTrustAccessPolicyRequireCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
