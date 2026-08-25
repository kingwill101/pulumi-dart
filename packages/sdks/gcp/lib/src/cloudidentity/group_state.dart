// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_additional_group_key.dart';
import 'group_group_key.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Additional group keys associated with the Group
  /// Structure is documented below.
  final pulumi.Input<List<GroupAdditionalGroupKey>?>? additionalGroupKeys;
  /// The time when the Group was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An extended description to help users determine the purpose of a Group.
  /// Must not be longer than 4,096 characters.
  final pulumi.Input<String?>? description;
  /// The display name of the Group.
  final pulumi.Input<String?>? displayName;
  /// EntityKey of the Group.
  /// Structure is documented below.
  final pulumi.Input<GroupGroupKey?>? groupKey;
  /// The initial configuration options for creating a Group.
  /// See the
  /// [API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
  /// for possible values.
  /// Default value is `EMPTY`.
  /// Possible values are: `INITIAL_GROUP_CONFIG_UNSPECIFIED`, `WITH_INITIAL_OWNER`, `EMPTY`.
  final pulumi.Input<String?>? initialGroupConfig;
  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.
  /// Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.
  /// Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.
  /// Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource name of the Group in the format: groups/{group_id}, where groupId
  /// is the unique ID assigned to the Group.
  final pulumi.Input<String?>? name;
  /// The resource name of the entity under which this Group resides in the
  /// Cloud Identity resource hierarchy.
  /// Must be of the form identitysources/{identity_source_id} for external-identity-mapped
  /// groups or customers/{customer_id} for Google Groups.
  final pulumi.Input<String?>? parent;
  /// The time when the Group was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [GroupState].
  /// [additionalGroupKeys] Additional group keys associated with the Group
  /// [createTime] The time when the Group was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An extended description to help users determine the purpose of a Group.
  /// [displayName] The display name of the Group.
  /// [groupKey] EntityKey of the Group.
  /// [initialGroupConfig] The initial configuration options for creating a Group.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// [name] Resource name of the Group in the format: groups/{group_id}, where groupId
  /// [parent] The resource name of the entity under which this Group resides in the
  /// [updateTime] The time when the Group was last updated.
  const GroupState({
    this.additionalGroupKeys,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.groupKey,
    this.initialGroupConfig,
    this.labels,
    this.name,
    this.parent,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroupKeys': ?pulumi.Input.mapOptionalInputValue<List<GroupAdditionalGroupKey>, List<Map<String, dynamic>>>(additionalGroupKeys, (value) => pulumi.Input.encodeList<GroupAdditionalGroupKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      additionalGroupKeys: (() { final guardedValue = map['additionalGroupKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupAdditionalGroupKey>(guardedValue, (value) => GroupAdditionalGroupKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupKey: (() { final guardedValue = map['groupKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupGroupKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialGroupConfig: (() { final guardedValue = map['initialGroupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
