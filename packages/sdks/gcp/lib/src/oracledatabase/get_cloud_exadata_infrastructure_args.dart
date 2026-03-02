// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_cloud_exadata_infrastructure_get_cloud_exadata_infrastructure_args_doc}
/// Arguments for getCloudExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_cloud_exadata_infrastructure_get_cloud_exadata_infrastructure_args_doc}
class GetCloudExadataInfrastructureArgs {
  /// The ID of the ExadataInfrastructure.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCloudExadataInfrastructureArgs].
  /// [cloudExadataInfrastructureId] The ID of the ExadataInfrastructure.
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  GetCloudExadataInfrastructureArgs({
    required this.cloudExadataInfrastructureId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureArgs(
      cloudExadataInfrastructureId: (map['cloudExadataInfrastructureId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

