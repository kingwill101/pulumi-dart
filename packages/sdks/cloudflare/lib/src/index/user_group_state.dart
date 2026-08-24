// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_policy.dart';

/// Input properties used for looking up and filtering UserGroup resources.
class UserGroupState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Timestamp for the creation of the user group
  final pulumi.Input<String?>? createdOn;
  /// Last time the user group was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Name of the User group.
  final pulumi.Input<String?>? name;
  /// Policies attached to the User group
  final pulumi.Input<List<UserGroupPolicy>?>? policies;

  /// Creates a new [UserGroupState].
  /// [accountId] Account identifier tag.
  /// [createdOn] Timestamp for the creation of the user group
  /// [modifiedOn] Last time the user group was modified.
  /// [name] Name of the User group.
  /// [policies] Policies attached to the User group
  const UserGroupState({
    this.accountId,
    this.createdOn,
    this.modifiedOn,
    this.name,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<UserGroupPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<UserGroupPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserGroupState.fromMap(Map<String, dynamic> map) {
    return UserGroupState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupPolicy>(guardedValue, (value) => UserGroupPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
