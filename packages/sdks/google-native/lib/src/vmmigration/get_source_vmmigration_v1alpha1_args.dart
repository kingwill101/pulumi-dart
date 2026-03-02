// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_source_vmmigration_v1alpha1_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_source_vmmigration_v1alpha1_args_doc}
class GetSourceVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetSourceVmmigrationV1alpha1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetSourceVmmigrationV1alpha1Args({
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

  factory GetSourceVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetSourceVmmigrationV1alpha1Args(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sourceId: (map['sourceId'] as String).input(),
    );
  }
}

