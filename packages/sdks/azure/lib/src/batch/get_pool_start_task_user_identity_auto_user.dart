// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolStartTaskUserIdentityAutoUser {
  /// The elevation level of the user account. "NonAdmin" - The auto user is a standard user without elevated access. "Admin" - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  final pulumi.Input<String> elevationLevel;
  /// The scope of the user identity under which the start task runs.
  final pulumi.Input<String> scope;

  /// Creates a new [GetPoolStartTaskUserIdentityAutoUser].
  /// [elevationLevel] The elevation level of the user account. "NonAdmin" - The auto user is a standard user without elevated access. "Admin" - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  /// [scope] The scope of the user identity under which the start task runs.
  GetPoolStartTaskUserIdentityAutoUser({
    required this.elevationLevel,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': elevationLevel,
      'scope': scope,
    };
  }

  factory GetPoolStartTaskUserIdentityAutoUser.fromMap(Map<String, dynamic> map) {
    return GetPoolStartTaskUserIdentityAutoUser(
      elevationLevel: (map['elevationLevel'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

