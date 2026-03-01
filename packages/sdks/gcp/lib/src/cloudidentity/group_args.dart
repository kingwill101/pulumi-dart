// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_group_key.dart';

/// {@template pulumi_cloudidentity_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_group_group_args_doc}
class GroupArgs {
  /// An extended description to help users determine the purpose of a Group.
  /// Must not be longer than 4,096 characters.
  final pulumi.Input<String>? description;
  /// The display name of the Group.
  final pulumi.Input<String>? displayName;
  /// EntityKey of the Group.
  /// Structure is documented below.
  final pulumi.Input<GroupGroupKey> groupKey;
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
  final pulumi.Input<Map<String, String>> labels;
  /// The resource name of the entity under which this Group resides in the
  /// Cloud Identity resource hierarchy.
  /// Must be of the form identitysources/{identity_source_id} for external-identity-mapped
  /// groups or customers/{customer_id} for Google Groups.
  final pulumi.Input<String> parent;

  /// Creates a new [GroupArgs].
  /// [description] An extended description to help users determine the purpose of a Group.
  /// [displayName] The display name of the Group.
  /// [groupKey] EntityKey of the Group.
  /// [initialGroupConfig] The initial configuration options for creating a Group.
  /// [labels] One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  /// [parent] The resource name of the entity under which this Group resides in the
  GroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<GroupGroupKey> groupKey,
    pulumi.Output<String>? initialGroupConfig,
    required pulumi.Output<Map<String, String>> labels,
    required pulumi.Output<String> parent,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      groupKey = pulumi.Input.asInput<GroupGroupKey>(groupKey),
      initialGroupConfig = pulumi.Input.asOptionalInput<String>(initialGroupConfig),
      labels = pulumi.Input.asInput<Map<String, String>>(labels),
      parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'groupKey': pulumi.Input.mapInputValue<GroupGroupKey, Map<String, dynamic>>(groupKey, (value) => value.toMap()),
      'initialGroupConfig': ?initialGroupConfig,
      'labels': labels,
      'parent': parent,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      groupKey: pulumi.Output.create<GroupGroupKey>(GroupGroupKey.fromMap((map['groupKey'] as Map).cast<String, dynamic>())),
      initialGroupConfig: map['initialGroupConfig'] == null ? null : pulumi.Output.create<String>(map['initialGroupConfig'] as String),
      labels: pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      parent: pulumi.Output.create<String>(map['parent'] as String),
    );
  }
}

