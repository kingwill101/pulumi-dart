// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [ZeroTrustAccessPolicyIncludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const ZeroTrustAccessPolicyIncludeCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory ZeroTrustAccessPolicyIncludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
