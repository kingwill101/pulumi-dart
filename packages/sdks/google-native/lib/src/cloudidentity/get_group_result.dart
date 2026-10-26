// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_metadata_response.dart';
import 'entity_key_response.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// Additional group keys associated with the Group.
  final List<EntityKeyResponse>? additionalGroupKeys;
  /// The time when the `Group` was created.
  final String? createTime;
  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final String? description;
  /// The display name of the `Group`.
  final String? displayName;
  /// Optional. Dynamic group metadata like queries and status.
  final DynamicGroupMetadataResponse? dynamicGroupMetadata;
  /// The `EntityKey` of the `Group`.
  final EntityKeyResponse? groupKey;
  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final Map<String, String>? labels;
  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group}`.
  final String? name;
  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final String? parent;
  /// The time when the `Group` was last updated.
  final String? updateTime;

  /// Creates a new [GetGroupResult].
  /// [additionalGroupKeys] Additional group keys associated with the Group.
  /// [createTime] The time when the `Group` was created.
  /// [description] An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  /// [displayName] The display name of the `Group`.
  /// [dynamicGroupMetadata] Optional. Dynamic group metadata like queries and status.
  /// [groupKey] The `EntityKey` of the `Group`.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  /// [name] The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group}`.
  /// [parent] Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  /// [updateTime] The time when the `Group` was last updated.
  const GetGroupResult({
    this.additionalGroupKeys,
    this.createTime,
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    this.groupKey,
    this.labels,
    this.name,
    this.parent,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroupKeys': ?(() { final guardedValue = additionalGroupKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<EntityKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'dynamicGroupMetadata': ?dynamicGroupMetadata?.toMap(),
      'groupKey': ?groupKey?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'parent': ?parent,
      'updateTime': ?updateTime,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      additionalGroupKeys: (() { final guardedValue = map['additionalGroupKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityKeyResponse>(guardedValue, (value) => EntityKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicGroupMetadata: (() { final guardedValue = map['dynamicGroupMetadata']; if (guardedValue == null) return null; return DynamicGroupMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      groupKey: (() { final guardedValue = map['groupKey']; if (guardedValue == null) return null; return EntityKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
