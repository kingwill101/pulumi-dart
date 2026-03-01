// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_additional_group_key.dart';
import 'group_group_key.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Additional group keys associated with the Group
  /// Structure is documented below.
  final pulumi.Input<List<GroupAdditionalGroupKey>>? additionalGroupKeys;
  /// The time when the Group was created.
  final pulumi.Input<String>? createTime;
  /// An extended description to help users determine the purpose of a Group.
  /// Must not be longer than 4,096 characters.
  final pulumi.Input<String>? description;
  /// The display name of the Group.
  final pulumi.Input<String>? displayName;
  /// EntityKey of the Group.
  /// Structure is documented below.
  final pulumi.Input<GroupGroupKey>? groupKey;
  /// The initial configuration options for creating a Group.
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values.
  /// Default value is `EMPTY`.
  /// Possible values are: `INITIAL_GROUP_CONFIG_UNSPECIFIED`, `WITH_INITIAL_OWNER`, `EMPTY`.
  final pulumi.Input<String>? initialGroupConfig;
  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.
  /// Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.
  /// Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.
  /// Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource name of the Group in the format: groups/{group_id}, where group_id
  /// is the unique ID assigned to the Group.
  final pulumi.Input<String>? name;
  /// The resource name of the entity under which this Group resides in the
  /// Cloud Identity resource hierarchy.
  /// Must be of the form identitysources/{identity_source_id} for external-identity-mapped
  /// groups or customers/{customer_id} for Google Groups.
  final pulumi.Input<String>? parent;
  /// The time when the Group was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GroupState].
  /// [additionalGroupKeys] Additional group keys associated with the Group
  /// [createTime] The time when the Group was created.
  /// [description] An extended description to help users determine the purpose of a Group.
  /// [displayName] The display name of the Group.
  /// [groupKey] EntityKey of the Group.
  /// [initialGroupConfig] The initial configuration options for creating a Group.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// [name] Resource name of the Group in the format: groups/{group_id}, where group_id
  /// [parent] The resource name of the entity under which this Group resides in the
  /// [updateTime] The time when the Group was last updated.
  GroupState({
    pulumi.Output<List<GroupAdditionalGroupKey>>? additionalGroupKeys,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<GroupGroupKey>? groupKey,
    pulumi.Output<String>? initialGroupConfig,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? updateTime,
  }) :
      additionalGroupKeys = pulumi.Input.asOptionalInput<List<GroupAdditionalGroupKey>>(additionalGroupKeys),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      groupKey = pulumi.Input.asOptionalInput<GroupGroupKey>(groupKey),
      initialGroupConfig = pulumi.Input.asOptionalInput<String>(initialGroupConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroupKeys': ?pulumi.Input.mapOptionalInputValue<List<GroupAdditionalGroupKey>, List<Map<String, dynamic>>>(additionalGroupKeys, (value) => pulumi.Input.encodeList<GroupAdditionalGroupKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'groupKey': ?pulumi.Input.mapOptionalInputValue<GroupGroupKey, Map<String, dynamic>>(groupKey, (value) => value.toMap()),
      'initialGroupConfig': ?initialGroupConfig,
      'labels': ?labels,
      'name': ?name,
      'parent': ?parent,
      'updateTime': ?updateTime,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      additionalGroupKeys: map['additionalGroupKeys'] == null ? null : pulumi.Output.create<List<GroupAdditionalGroupKey>>(pulumi.Input.decodeList<GroupAdditionalGroupKey>(map['additionalGroupKeys'], (value) => GroupAdditionalGroupKey.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      groupKey: map['groupKey'] == null ? null : pulumi.Output.create<GroupGroupKey>(GroupGroupKey.fromMap((map['groupKey'] as Map).cast<String, dynamic>())),
      initialGroupConfig: map['initialGroupConfig'] == null ? null : pulumi.Output.create<String>(map['initialGroupConfig'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

