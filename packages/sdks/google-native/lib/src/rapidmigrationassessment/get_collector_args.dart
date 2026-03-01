// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rapidmigrationassessment_v1_get_collector_args_doc}
/// Arguments for getCollector.
/// {@endtemplate}
/// {@macro pulumi_rapidmigrationassessment_v1_get_collector_args_doc}
class GetCollectorArgs {
  final pulumi.Input<String> collectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCollectorArgs].
  /// [collectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCollectorArgs({
    required pulumi.Output<String> collectorId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      collectorId = pulumi.Input.asInput<String>(collectorId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorId': collectorId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCollectorArgs(
      collectorId: pulumi.Output.create<String>(map['collectorId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

