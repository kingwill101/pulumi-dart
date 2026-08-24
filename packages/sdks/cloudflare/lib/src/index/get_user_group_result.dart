// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_filter.dart';
import 'get_user_group_policy.dart';

/// Result data returned by getUserGroup.
class GetUserGroupResult {
  /// Account identifier tag.
  final String? accountId;
  /// Timestamp for the creation of the user group
  final String? createdOn;
  final GetUserGroupFilter? filter;
  /// User Group identifier tag.
  final String? id;
  /// Last time the user group was modified.
  final String? modifiedOn;
  /// Name of the user group.
  final String? name;
  /// Policies attached to the User group
  final List<GetUserGroupPolicy>? policies;
  /// User Group identifier tag.
  final String? userGroupId;

  /// Creates a new [GetUserGroupResult].
  /// [accountId] Account identifier tag.
  /// [createdOn] Timestamp for the creation of the user group
  /// [filter] Optional.
  /// [id] User Group identifier tag.
  /// [modifiedOn] Last time the user group was modified.
  /// [name] Name of the user group.
  /// [policies] Policies attached to the User group
  /// [userGroupId] User Group identifier tag.
  const GetUserGroupResult({
    this.accountId,
    this.createdOn,
    this.filter,
    this.id,
    this.modifiedOn,
    this.name,
    this.policies,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserGroupPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userGroupId': ?userGroupId,
    };
  }

  factory GetUserGroupResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetUserGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserGroupPolicy>(guardedValue, (value) => GetUserGroupPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
