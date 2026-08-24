// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_filter.dart';

/// {@template pulumi_index_get_user_group_get_user_group_args_doc}
/// Arguments for getUserGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_group_get_user_group_args_doc}
class GetUserGroupArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetUserGroupFilter?>? filter;
  /// User Group identifier tag.
  final pulumi.Input<String?>? userGroupId;

  /// Creates a new [GetUserGroupArgs].
  /// [accountId] Account identifier tag.
  /// [filter] Optional.
  /// [userGroupId] User Group identifier tag.
  const GetUserGroupArgs({
    required this.accountId,
    this.filter,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetUserGroupFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'userGroupId': ?userGroupId,
    };
  }

  factory GetUserGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetUserGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
