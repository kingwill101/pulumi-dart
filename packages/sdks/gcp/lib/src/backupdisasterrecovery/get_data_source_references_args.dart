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
  /// The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [GetDataSourceReferencesArgs].
  /// [location] Required.
  /// [project] - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [resourceType] The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  GetDataSourceReferencesArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

