// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group_additional_group_key.dart';
import 'get_groups_group_group_key.dart';

class GetGroupsGroup {
  /// Additional group keys associated with the Group
  final pulumi.Input<List<GetGroupsGroupAdditionalGroupKey>> additionalGroupKeys;
  /// The time when the Group was created.
  final pulumi.Input<String> createTime;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// An extended description to help users determine the purpose of a Group.
  final pulumi.Input<String> description;
  /// The display name of the Group.
  final pulumi.Input<String> displayName;
  /// EntityKey of the Group.  Structure is documented below.
  final pulumi.Input<List<GetGroupsGroupGroupKey>> groupKeys;
  /// The initial configuration options for creating a Group.
  ///
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values. Default value: "EMPTY" Possible values: ["INITIAL_GROUP_CONFIG_UNSPECIFIED", "WITH_INITIAL_OWNER", "EMPTY"]
  final pulumi.Input<String> initialGroupConfig;
  /// The labels that apply to the Group.
  /// Contains 'cloudidentity.googleapis.com/groups.discussion_forum': '' if the Group is a Google Group or
  /// 'system/groups/external': '' if the Group is an external-identity-mapped group.
  final pulumi.Input<Map<String, String>> labels;
  /// Resource name of the Group in the format: groups/{group_id}, where `groupId` is the unique ID assigned to the Group.
  final pulumi.Input<String> name;
  /// The parent resource under which to list all Groups. Must be of the form identitysources/{identity_source_id} for external- identity-mapped groups or customers/{customer_id} for Google Groups.
  final pulumi.Input<String> parent;
  /// The time when the Group was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetGroupsGroup].
  /// [additionalGroupKeys] Additional group keys associated with the Group
  /// [createTime] The time when the Group was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] An extended description to help users determine the purpose of a Group.
  /// [displayName] The display name of the Group.
  /// [groupKeys] EntityKey of the Group.  Structure is documented below.
  /// [initialGroupConfig] The initial configuration options for creating a Group.
  /// [labels] The labels that apply to the Group.
  /// [name] Resource name of the Group in the format: groups/{group_id}, where `groupId` is the unique ID assigned to the Group.
  /// [parent] The parent resource under which to list all Groups. Must be of the form identitysources/{identity_source_id} for external- identity-mapped groups or customers/{customer_id} for Google Groups.
  /// [updateTime] The time when the Group was last updated.
  const GetGroupsGroup({
    required this.additionalGroupKeys,
    required this.createTime,
    required this.deletionPolicy,
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
      'additionalGroupKeys': pulumi.Input.mapInputValue<List<GetGroupsGroupAdditionalGroupKey>, List<Map<String, dynamic>>>(additionalGroupKeys, (value) => pulumi.Input.encodeList<GetGroupsGroupAdditionalGroupKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'displayName': displayName,
      'groupKeys': pulumi.Input.mapInputValue<List<GetGroupsGroupGroupKey>, List<Map<String, dynamic>>>(groupKeys, (value) => pulumi.Input.encodeList<GetGroupsGroupGroupKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialGroupConfig': initialGroupConfig,
      'labels': labels,
      'name': name,
      'parent': parent,
      'updateTime': updateTime,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      additionalGroupKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupsGroupAdditionalGroupKey>(map['additionalGroupKeys']!, (value) => GetGroupsGroupAdditionalGroupKey.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      groupKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGroupsGroupGroupKey>(map['groupKeys']!, (value) => GetGroupsGroupGroupKey.fromMap((value as Map).cast<String, dynamic>()))),
      initialGroupConfig: pulumi.Input.fromValue(map['initialGroupConfig'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
