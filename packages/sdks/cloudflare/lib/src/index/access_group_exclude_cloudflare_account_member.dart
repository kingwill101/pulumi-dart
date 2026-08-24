// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeCloudflareAccountMember {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [AccessGroupExcludeCloudflareAccountMember].
  /// [accountId] Identifier.
  const AccessGroupExcludeCloudflareAccountMember({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory AccessGroupExcludeCloudflareAccountMember.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeCloudflareAccountMember(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
