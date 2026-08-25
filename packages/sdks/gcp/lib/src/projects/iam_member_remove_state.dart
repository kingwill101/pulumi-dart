// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IamMemberRemove resources.
class IamMemberRemoveState {
  /// The IAM principal that should not have the target role.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String?>? member;
  /// The project id of the target project.
  final pulumi.Input<String?>? project;
  /// The target role that should be removed.
  final pulumi.Input<String?>? role;

  /// Creates a new [IamMemberRemoveState].
  /// [member] The IAM principal that should not have the target role.
  /// [project] The project id of the target project.
  /// [role] The target role that should be removed.
  const IamMemberRemoveState({
    this.member,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'member': ?member,
      'project': ?project,
      'role': ?role,
    };
  }

  factory IamMemberRemoveState.fromMap(Map<String, dynamic> map) {
    return IamMemberRemoveState(
      member: (() { final guardedValue = map['member']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
