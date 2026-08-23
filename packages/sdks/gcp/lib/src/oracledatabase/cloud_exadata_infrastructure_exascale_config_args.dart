// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_cloud_exadata_infrastructure_exascale_config_cloud_exadata_infrastructure_exascale_config_args_doc}
/// The set of arguments for CloudExadataInfrastructureExascaleConfig.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_cloud_exadata_infrastructure_exascale_config_cloud_exadata_infrastructure_exascale_config_args_doc}
class CloudExadataInfrastructureExascaleConfigArgs {
  /// A reference to CloudExadataInfrastructure resource
  final pulumi.Input<String> cloudExadataInfrastructure;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// (Required)
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The total storage to be allocated to Exascale in GBs.
  final pulumi.Input<int> totalStorageSizeGb;

  /// Creates a new [CloudExadataInfrastructureExascaleConfigArgs].
  /// [cloudExadataInfrastructure] A reference to CloudExadataInfrastructure resource
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] (Required)
  /// [project] The ID of the project in which the resource belongs.
  /// [totalStorageSizeGb] The total storage to be allocated to Exascale in GBs.
  const CloudExadataInfrastructureExascaleConfigArgs({
    required this.cloudExadataInfrastructure,
    this.deletionPolicy,
    required this.location,
    this.project,
    required this.totalStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructure': cloudExadataInfrastructure,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'totalStorageSizeGb': totalStorageSizeGb,
    };
  }

  factory CloudExadataInfrastructureExascaleConfigArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureExascaleConfigArgs(
      cloudExadataInfrastructure: pulumi.Input.fromValue(map['cloudExadataInfrastructure'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalStorageSizeGb: pulumi.Input.fromValue(map['totalStorageSizeGb'] as int),
    );
  }
}
