// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_result_policy.dart';

class GetUserGroupsResult {
  /// Timestamp for the creation of the user group
  final pulumi.Input<String> createdOn;
  /// User Group identifier tag.
  final pulumi.Input<String> id;
  /// Last time the user group was modified.
  final pulumi.Input<String> modifiedOn;
  /// Name of the user group.
  final pulumi.Input<String> name;
  /// Policies attached to the User group
  final pulumi.Input<List<GetUserGroupsResultPolicy>> policies;

  /// Creates a new [GetUserGroupsResult].
  /// [createdOn] Timestamp for the creation of the user group
  /// [id] User Group identifier tag.
  /// [modifiedOn] Last time the user group was modified.
  /// [name] Name of the user group.
  /// [policies] Policies attached to the User group
  const GetUserGroupsResult({
    required this.createdOn,
    required this.id,
    required this.modifiedOn,
    required this.name,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'id': id,
      'modifiedOn': modifiedOn,
      'name': name,
      'policies': pulumi.Input.mapInputValue<List<GetUserGroupsResultPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetUserGroupsResultPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserGroupsResultPolicy>(map['policies']!, (value) => GetUserGroupsResultPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
