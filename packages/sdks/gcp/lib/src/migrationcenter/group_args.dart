// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_group_group_args_doc}
class GroupArgs {
  /// Optional. The description of the group.
  final pulumi.Input<String>? description;
  /// Optional. User-friendly display name.
  final pulumi.Input<String>? displayName;
  /// Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `a-z?`.
  final pulumi.Input<String> groupId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the group.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [description] Optional. The description of the group.
  /// [displayName] Optional. User-friendly display name.
  /// [groupId] Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `a-z?`.
  /// [labels] Labels as key value pairs.
  /// [location] The location of the group.
  /// [project] The ID of the project in which the resource belongs.
  GroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> groupId,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      groupId = pulumi.Input.asInput<String>(groupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'groupId': groupId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

