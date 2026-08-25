// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_data_source_reference_get_data_source_reference_args_doc}
/// Arguments for getDataSourceReference.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_data_source_reference_get_data_source_reference_args_doc}
class GetDataSourceReferenceArgs {
  /// - (Required) The id of the data source reference.
  final pulumi.Input<String> dataSourceReferenceId;
  final pulumi.Input<String> location;
  /// - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetDataSourceReferenceArgs].
  /// [dataSourceReferenceId] - (Required) The id of the data source reference.
  /// [location] Required.
  /// [project] - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetDataSourceReferenceArgs({
    required this.dataSourceReferenceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceReferenceId': dataSourceReferenceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataSourceReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferenceArgs(
      dataSourceReferenceId: pulumi.Input.fromValue(map['dataSourceReferenceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
