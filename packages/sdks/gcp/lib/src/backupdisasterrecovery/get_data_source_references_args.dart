// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_data_source_references_get_data_source_references_args_doc}
/// Arguments for getDataSourceReferences.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_data_source_references_get_data_source_references_args_doc}
class GetDataSourceReferencesArgs {
  final pulumi.Input<String> location;
  /// - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resourceType` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [GetDataSourceReferencesArgs].
  /// [location] Required.
  /// [project] - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [resourceType] The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resourceType` is deprecated and will be removed in a future major release.
  const GetDataSourceReferencesArgs({
    required this.location,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'resourceType': ?resourceType,
    };
  }

  factory GetDataSourceReferencesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
