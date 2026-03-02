// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_auto_accept.dart';

/// {@template pulumi_networkconnectivity_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_group_group_args_doc}
class GroupArgs {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  final pulumi.Input<GroupAutoAccept>? autoAccept;
  /// An optional description of the group.
  final pulumi.Input<String>? description;
  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  final pulumi.Input<String> hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the group. Group names must be unique.
  /// Possible values are: `default`, `center`, `edge`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [autoAccept] Optional. The auto-accept setting for this group.
  /// [description] An optional description of the group.
  /// [hub] The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] The name of the group. Group names must be unique.
  /// [project] The ID of the project in which the resource belongs.
  GroupArgs({
    this.autoAccept,
    this.description,
    required this.hub,
    this.labels,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAccept': ?pulumi.Input.mapOptionalInputValue<GroupAutoAccept, Map<String, dynamic>>(autoAccept, (value) => value.toMap()),
      'description': ?description,
      'hub': hub,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      autoAccept: map['autoAccept'] == null ? null : (GroupAutoAccept.fromMap((map['autoAccept'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hub: (map['hub'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

