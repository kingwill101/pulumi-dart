// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group_additional_group_key.dart';
import 'get_groups_group_group_key.dart';

class GetGroupsGroup {
  /// Additional group keys associated with the Group
  final List<GetGroupsGroupAdditionalGroupKey> additionalGroupKeys;
  /// The time when the Group was created.
  final String createTime;
  /// An extended description to help users determine the purpose of a Group.
  final String description;
  /// The display name of the Group.
  final String displayName;
  /// EntityKey of the Group.  Structure is documented below.
  final List<GetGroupsGroupGroupKey> groupKeys;
  /// The initial configuration options for creating a Group.
  ///
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values. Default value: "EMPTY" Possible values: ["INITIAL_GROUP_CONFIG_UNSPECIFIED", "WITH_INITIAL_OWNER", "EMPTY"]
  final String initialGroupConfig;
  /// The labels that apply to the Group.
  /// Contains 'cloudidentity.googleapis.com/groups.discussion_forum': '' if the Group is a Google Group or
  /// 'system/groups/external': '' if the Group is an external-identity-mapped group.
  final Map<String, String> labels;
  /// Resource name of the Group in the format: groups/{group_id}, where `group_id` is the unique ID assigned to the Group.
  final String name;
  /// The parent resource under which to list all Groups. Must be of the form identitysources/{identity_source_id} for external- identity-mapped groups or customers/{customer_id} for Google Groups.
  final String parent;
  /// The time when the Group was last updated.
  final String updateTime;

  /// Creates a new [GetGroupsGroup].
  /// [additionalGroupKeys] Additional group keys associated with the Group
  /// [createTime] The time when the Group was created.
  /// [description] An extended description to help users determine the purpose of a Group.
  /// [displayName] The display name of the Group.
  /// [groupKeys] EntityKey of the Group.  Structure is documented below.
  /// [initialGroupConfig] The initial configuration options for creating a Group.
  /// [labels] The labels that apply to the Group.
  /// [name] Resource name of the Group in the format: groups/{group_id}, where `group_id` is the unique ID assigned to the Group.
  /// [parent] The parent resource under which to list all Groups. Must be of the form identitysources/{identity_source_id} for external- identity-mapped groups or customers/{customer_id} for Google Groups.
  /// [updateTime] The time when the Group was last updated.
  GetGroupsGroup({
    required this.additionalGroupKeys,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.groupKeys,
    required this.initialGroupConfig,
    required this.labels,
    required this.name,
    required this.parent,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroupKeys': pulumi.Input.encodeList<GetGroupsGroupAdditionalGroupKey, Map<String, dynamic>>(additionalGroupKeys, (value) => value.toMap()),
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'groupKeys': pulumi.Input.encodeList<GetGroupsGroupGroupKey, Map<String, dynamic>>(groupKeys, (value) => value.toMap()),
      'initialGroupConfig': initialGroupConfig,
      'labels': labels,
      'name': name,
      'parent': parent,
      'updateTime': updateTime,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      additionalGroupKeys: pulumi.Input.decodeList<GetGroupsGroupAdditionalGroupKey>(map['additionalGroupKeys'], (value) => GetGroupsGroupAdditionalGroupKey.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      groupKeys: pulumi.Input.decodeList<GetGroupsGroupGroupKey>(map['groupKeys'], (value) => GetGroupsGroupGroupKey.fromMap((value as Map).cast<String, dynamic>())),
      initialGroupConfig: map['initialGroupConfig'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parent: map['parent'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

