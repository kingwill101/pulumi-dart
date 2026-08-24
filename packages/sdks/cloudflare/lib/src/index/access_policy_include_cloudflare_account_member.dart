// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [AccessPolicyIncludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const AccessPolicyIncludeCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory AccessPolicyIncludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
