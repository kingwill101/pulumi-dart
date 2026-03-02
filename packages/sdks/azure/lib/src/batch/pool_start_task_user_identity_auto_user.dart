// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolStartTaskUserIdentityAutoUser {
  /// The elevation level of the user identity under which the start task runs. Possible values are `Admin` or `NonAdmin`. Defaults to `NonAdmin`.
  final pulumi.Input<String>? elevationLevel;
  /// The scope of the user identity under which the start task runs. Possible values are `Task` or `Pool`. Defaults to `Task`.
  final pulumi.Input<String>? scope;

  /// Creates a new [PoolStartTaskUserIdentityAutoUser].
  /// [elevationLevel] The elevation level of the user identity under which the start task runs. Possible values are `Admin` or `NonAdmin`. Defaults to `NonAdmin`.
  /// [scope] The scope of the user identity under which the start task runs. Possible values are `Task` or `Pool`. Defaults to `Task`.
  PoolStartTaskUserIdentityAutoUser({
    this.elevationLevel,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': ?elevationLevel,
      'scope': ?scope,
    };
  }

  factory PoolStartTaskUserIdentityAutoUser.fromMap(Map<String, dynamic> map) {
    return PoolStartTaskUserIdentityAutoUser(
      elevationLevel: map['elevationLevel'] == null ? null : (map['elevationLevel']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
    );
  }
}

