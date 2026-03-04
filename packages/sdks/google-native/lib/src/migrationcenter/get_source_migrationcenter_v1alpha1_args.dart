// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1alpha1_get_source_migrationcenter_v1alpha1_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_get_source_migrationcenter_v1alpha1_args_doc}
class GetSourceMigrationcenterV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetSourceMigrationcenterV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetSourceMigrationcenterV1alpha1Args({
    required this.location,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetSourceMigrationcenterV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSourceMigrationcenterV1alpha1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}
