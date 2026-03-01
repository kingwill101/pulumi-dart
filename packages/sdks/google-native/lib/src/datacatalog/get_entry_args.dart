// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_entry_args_doc}
/// Arguments for getEntry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_entry_args_doc}
class GetEntryArgs {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryArgs].
  /// [entryGroupId] Required.
  /// [entryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryArgs({
    required pulumi.Output<String> entryGroupId,
    required pulumi.Output<String> entryId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
      entryId = pulumi.Input.asInput<String>(entryId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'entryId': entryId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryArgs(
      entryGroupId: pulumi.Output.create<String>(map['entryGroupId'] as String),
      entryId: pulumi.Output.create<String>(map['entryId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

