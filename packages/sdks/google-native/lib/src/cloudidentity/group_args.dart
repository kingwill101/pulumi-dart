// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_metadata.dart';
import 'entity_key.dart';

/// {@template pulumi_cloudidentity_v1_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1_group_args_doc}
class GroupArgs {
  /// An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  final pulumi.Input<String>? description;

  /// The display name of the `Group`.
  final pulumi.Input<String>? displayName;

  /// Optional. Dynamic group metadata like queries and status.
  final pulumi.Input<DynamicGroupMetadata>? dynamicGroupMetadata;

  /// The `EntityKey` of the `Group`.
  final pulumi.Input<EntityKey> groupKey;

  /// Optional. The initial configuration option for the `Group`.
  final pulumi.Input<String>? initialGroupConfig;

  /// One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  final pulumi.Input<Map<String, String>> labels;

  /// Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  final pulumi.Input<String> parent;

  /// Creates a new [GroupArgs].
  /// [description] An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  /// [displayName] The display name of the `Group`.
  /// [dynamicGroupMetadata] Optional. Dynamic group metadata like queries and status.
  /// [groupKey] The `EntityKey` of the `Group`.
  /// [initialGroupConfig] Optional. The initial configuration option for the `Group`.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value.
  /// [parent] Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source}` for external [identity-mapped groups](https://support.google.com/a/answer/9039510) or `customers/{customer_id}` for Google Groups. The `customer_id` must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://support.google.com/cloudidentity/answer/10070793)
  GroupArgs({
    this.description,
    this.displayName,
    this.dynamicGroupMetadata,
    required this.groupKey,
    this.initialGroupConfig,
    required this.labels,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'dynamicGroupMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            DynamicGroupMetadata,
            Map<String, dynamic>
          >(dynamicGroupMetadata, (value) => value.toMap()),
      'groupKey': pulumi.Input.mapInputValue<EntityKey, Map<String, dynamic>>(
        groupKey,
        (value) => value.toMap(),
      ),
      'initialGroupConfig': ?initialGroupConfig,
      'labels': labels,
      'parent': parent,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
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
          DynamicGroupMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      groupKey: pulumi.Input.fromValue(
        EntityKey.fromMap((map['groupKey']! as Map).cast<String, dynamic>()),
      ),
      initialGroupConfig: (() {
        final guardedValue = map['initialGroupConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
