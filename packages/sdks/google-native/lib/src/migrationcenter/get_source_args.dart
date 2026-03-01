// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_source_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_source_args_doc}
class GetSourceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetSourceArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetSourceArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sourceId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
    );
  }
}

