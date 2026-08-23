// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_properties.dart';

/// {@template pulumi_oracledatabase_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
/// The set of arguments for CloudExadataInfrastructure.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
class CloudExadataInfrastructureArgs {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  /// User friendly name for this resource.
  final pulumi.Input<String>? displayName;
  /// GCP location where Oracle Exadata is hosted.
  final pulumi.Input<String>? gcpOracleZone;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  final pulumi.Input<CloudExadataInfrastructureProperties>? properties;

  /// Creates a new [CloudExadataInfrastructureArgs].
  /// [cloudExadataInfrastructureId] The ID of the Exadata Infrastructure to create. This value is restricted
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [displayName] User friendly name for this resource.
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Various properties of Exadata Infrastructure.
  const CloudExadataInfrastructureArgs({
    required this.cloudExadataInfrastructureId,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudExadataInfrastructureProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      cloudExadataInfrastructureId: pulumi.Input.fromValue(map['cloudExadataInfrastructureId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudExadataInfrastructureProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
