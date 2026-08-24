// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_policy.dart';

/// {@template pulumi_index_user_group_user_group_args_doc}
/// The set of arguments for UserGroup.
/// {@endtemplate}
/// {@macro pulumi_index_user_group_user_group_args_doc}
class UserGroupArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Name of the User group.
  final pulumi.Input<String> name;
  /// Policies attached to the User group
  final pulumi.Input<List<UserGroupPolicy>?>? policies;

  /// Creates a new [UserGroupArgs].
  /// [accountId] Account identifier tag.
  /// [name] Name of the User group.
  /// [policies] Policies attached to the User group
  const UserGroupArgs({
    required this.accountId,
    required this.name,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<UserGroupPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<UserGroupPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupPolicy>(guardedValue, (value) => UserGroupPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
