// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_metadata_cloudidentity_v1beta1.dart';
import 'entity_key_cloudidentity_v1beta1.dart';
import 'posix_group.dart';

/// {@template pulumi_cloudidentity_v1beta1_group_cloudidentity_v1beta1_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_group_cloudidentity_v1beta1_args_doc}
class GroupCloudidentityV1beta1Args {
  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final pulumi.Input<String>? description;

  /// The display name of the `Group`.
  final pulumi.Input<String>? displayName;

  /// Optional. Dynamic group metadata like queries and status.
  final pulumi.Input<DynamicGroupMetadataCloudidentityV1beta1>?
  dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  final pulumi.Input<EntityKeyCloudidentityV1beta1> groupKey;

  /// Required. The initial configuration option for the `Group`.
  final pulumi.Input<String> initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final pulumi.Input<Map<String, String>> labels;

  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final pulumi.Input<String> parent;

  /// Optional. The POSIX groups associated with the `Group`.
  final pulumi.Input<List<PosixGroup>>? posixGroups;

  /// Creates a new [GroupCloudidentityV1beta1Args].
  /// [description] An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  /// [displayName] The display name of the `Group`.
  /// [dynamicGroupMetadata] Optional. Dynamic group metadata like queries and status.
  /// [groupKey] The `EntityKey` of the `Group`.
  /// [initialGroupConfig] Required. The initial configuration option for the `Group`.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  /// [parent] Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  /// [posixGroups] Optional. The POSIX groups associated with the `Group`.
  GroupCloudidentityV1beta1Args({
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    required this.groupKey,
    required this.initialGroupConfig,
    required this.labels,
    required this.parent,
    this.posixGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'dynamicGroupMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            DynamicGroupMetadataCloudidentityV1beta1,
            Map<String, dynamic>
          >(dynamicGroupMetadata, (value) => value.toMap()),
      'groupKey':
          pulumi.Input.mapInputValue<
            EntityKeyCloudidentityV1beta1,
            Map<String, dynamic>
          >(groupKey, (value) => value.toMap()),
      'initialGroupConfig': initialGroupConfig,
      'labels': labels,
      'parent': parent,
      'posixGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<PosixGroup>,
            List<Map<String, dynamic>>
          >(
            posixGroups,
            (value) =>
                pulumi.Input.encodeList<PosixGroup, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory GroupCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GroupCloudidentityV1beta1Args(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dynamicGroupMetadata: (() {
        final guardedValue = map['dynamicGroupMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DynamicGroupMetadataCloudidentityV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      groupKey: pulumi.Input.fromValue(
        EntityKeyCloudidentityV1beta1.fromMap(
          (map['groupKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      initialGroupConfig: pulumi.Input.fromValue(
        map['initialGroupConfig'] as String,
      ),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      posixGroups: (() {
        final guardedValue = map['posixGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PosixGroup>(
            guardedValue,
            (value) =>
                PosixGroup.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
