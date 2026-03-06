// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_start_task_user_identity_auto_user.dart';

class GetPoolStartTaskUserIdentity {
  /// A `auto_user` block that describes the user identity under which the start task runs.
  final pulumi.Input<List<GetPoolStartTaskUserIdentityAutoUser>> autoUsers;
  /// The user to use for authentication against the CIFS file system.
  final pulumi.Input<String> userName;

  /// Creates a new [GetPoolStartTaskUserIdentity].
  /// [autoUsers] A `auto_user` block that describes the user identity under which the start task runs.
  /// [userName] The user to use for authentication against the CIFS file system.
  const GetPoolStartTaskUserIdentity({
    required this.autoUsers,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUsers': pulumi.Input.mapInputValue<List<GetPoolStartTaskUserIdentityAutoUser>, List<Map<String, dynamic>>>(autoUsers, (value) => pulumi.Input.encodeList<GetPoolStartTaskUserIdentityAutoUser, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userName': userName,
    };
  }

  factory GetPoolStartTaskUserIdentity.fromMap(Map<String, dynamic> map) {
    return GetPoolStartTaskUserIdentity(
      autoUsers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPoolStartTaskUserIdentityAutoUser>(map['autoUsers']!, (value) => GetPoolStartTaskUserIdentityAutoUser.fromMap((value as Map).cast<String, dynamic>()))),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

