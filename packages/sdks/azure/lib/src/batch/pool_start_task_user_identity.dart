// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_start_task_user_identity_auto_user.dart';

class PoolStartTaskUserIdentity {
  /// A `autoUser` block that describes the user identity under which the start task runs as defined below.
  ///
  /// &gt; **Note:** `userName` and `autoUser` blocks cannot be used both at the same time, but you need to define one or the other.
  final pulumi.Input<PoolStartTaskUserIdentityAutoUser?>? autoUser;
  /// The username to be used by the Batch pool start task.
  final pulumi.Input<String?>? userName;

  /// Creates a new [PoolStartTaskUserIdentity].
  /// [autoUser] A `autoUser` block that describes the user identity under which the start task runs as defined below.
  /// [userName] The username to be used by the Batch pool start task.
  const PoolStartTaskUserIdentity({
    this.autoUser,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUser': ?pulumi.Input.mapOptionalInputValue<PoolStartTaskUserIdentityAutoUser, Map<String, dynamic>>(autoUser, (value) => value.toMap()),
      'userName': ?userName,
    };
  }

  factory PoolStartTaskUserIdentity.fromMap(Map<String, dynamic> map) {
    return PoolStartTaskUserIdentity(
      autoUser: (() { final guardedValue = map['autoUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolStartTaskUserIdentityAutoUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
