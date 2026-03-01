// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalsolution_v2_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_snapshot_args_doc}
class SnapshotArgs {
  /// The description of the snapshot.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> volumeId;

  /// Creates a new [SnapshotArgs].
  /// [description] The description of the snapshot.
  /// [location] Optional.
  /// [name] The name of the snapshot.
  /// [project] Optional.
  /// [volumeId] Required.
  SnapshotArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> volumeId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      volumeId = pulumi.Input.asInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'volumeId': volumeId,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      volumeId: pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

