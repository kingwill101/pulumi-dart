// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_data_source_references_get_data_source_references_args_doc}
/// Arguments for getDataSourceReferences.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_data_source_references_get_data_source_references_args_doc}
class GetDataSourceReferencesArgs {
  final pulumi.Input<String> location;
  /// - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetDataSourceReferencesArgs].
  /// [location] Required.
  /// [project] - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetDataSourceReferencesArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataSourceReferencesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
