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
  const GetCollectorArgs({
    required this.collectorId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorId': collectorId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCollectorArgs(
      collectorId: pulumi.Input.fromValue(map['collectorId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
