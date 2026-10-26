// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_metadata_response_cloudidentity_v1beta1.dart';
import 'entity_key_response_cloudidentity_v1beta1.dart';
import 'posix_group_response.dart';

/// Result data returned by getGroup.
class GetGroupCloudidentityV1beta1Result {
  /// Additional group keys associated with the Group.
  final List<EntityKeyResponseCloudidentityV1beta1>? additionalGroupKeys;
  /// The time when the `Group` was created.
  final String? createTime;
  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final String? description;
  /// The display name of the `Group`.
  final String? displayName;
  /// Optional. Dynamic group metadata like queries and status.
  final DynamicGroupMetadataResponseCloudidentityV1beta1? dynamicGroupMetadata;
  /// The `EntityKey` of the `Group`.
  final EntityKeyResponseCloudidentityV1beta1? groupKey;
  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final Map<String, String>? labels;
  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group_id}`.
  final String? name;
  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final String? parent;
  /// Optional. The POSIX groups associated with the `Group`.
  final List<PosixGroupResponse>? posixGroups;
  /// The time when the `Group` was last updated.
  final String? updateTime;

  /// Creates a new [GetGroupCloudidentityV1beta1Result].
  /// [additionalGroupKeys] Additional group keys associated with the Group.
  /// [createTime] The time when the `Group` was created.
  /// [description] An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  /// [displayName] The display name of the `Group`.
  /// [dynamicGroupMetadata] Optional. Dynamic group metadata like queries and status.
  /// [groupKey] The `EntityKey` of the `Group`.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  /// [name] The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group_id}`.
  /// [parent] Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  /// [posixGroups] Optional. The POSIX groups associated with the `Group`.
  /// [updateTime] The time when the `Group` was last updated.
  const GetGroupCloudidentityV1beta1Result({
    this.additionalGroupKeys,
    this.createTime,
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    this.groupKey,
    this.labels,
    this.name,
    this.parent,
    this.posixGroups,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalGroupKeys': ?(() { final guardedValue = additionalGroupKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<EntityKeyResponseCloudidentityV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'dynamicGroupMetadata': ?dynamicGroupMetadata?.toMap(),
      'groupKey': ?groupKey?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'parent': ?parent,
      'posixGroups': ?(() { final guardedValue = posixGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<PosixGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetGroupCloudidentityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetGroupCloudidentityV1beta1Result(
      additionalGroupKeys: (() { final guardedValue = map['additionalGroupKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityKeyResponseCloudidentityV1beta1>(guardedValue, (value) => EntityKeyResponseCloudidentityV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicGroupMetadata: (() { final guardedValue = map['dynamicGroupMetadata']; if (guardedValue == null) return null; return DynamicGroupMetadataResponseCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      groupKey: (() { final guardedValue = map['groupKey']; if (guardedValue == null) return null; return EntityKeyResponseCloudidentityV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      posixGroups: (() { final guardedValue = map['posixGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PosixGroupResponse>(guardedValue, (value) => PosixGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
