// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_datasets_get_datasets_args_doc}
/// Arguments for getDatasets.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_datasets_get_datasets_args_doc}
class GetDatasetsArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetsArgs].
  /// [project] The ID of the project in which the resource belongs.
  GetDatasetsArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetDatasetsArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetsArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

