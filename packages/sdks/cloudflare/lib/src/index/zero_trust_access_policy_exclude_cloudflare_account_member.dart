// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [ZeroTrustAccessPolicyExcludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const ZeroTrustAccessPolicyExcludeCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory ZeroTrustAccessPolicyExcludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
