// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_db_storage_vault_properties.dart';

/// {@template pulumi_oracledatabase_exascale_db_storage_vault_exascale_db_storage_vault_args_doc}
/// The set of arguments for ExascaleDbStorageVault.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_exascale_db_storage_vault_exascale_db_storage_vault_args_doc}
class ExascaleDbStorageVaultArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  final pulumi.Input<bool?>? deletionProtection;
  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  final pulumi.Input<String> displayName;
  /// The Exadata Infrastructure resource on which ExascaleDbStorageVault resource is created.
  /// In the format: projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_extradata_infrastructure}
  final pulumi.Input<String?>? exadataInfrastructure;
  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> exascaleDbStorageVaultId;
  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String?>? gcpOracleZone;
  /// The labels or tags associated with the ExascaleDbStorageVault.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  /// Structure is documented below.
  final pulumi.Input<ExascaleDbStorageVaultProperties> properties;

  /// Creates a new [ExascaleDbStorageVaultArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or pulumi up that would delete the instance will fail.
  /// [displayName] The display name for the ExascaleDbStorageVault. The name does not have to
  /// [exadataInfrastructure] The Exadata Infrastructure resource on which ExascaleDbStorageVault resource is created.
  /// [exascaleDbStorageVaultId] The ID of the ExascaleDbStorageVault to create. This value is
  /// [gcpOracleZone] The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// [labels] The labels or tags associated with the ExascaleDbStorageVault.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of the ExascaleDbStorageVault.
  const ExascaleDbStorageVaultArgs({
    this.deletionPolicy,
    this.deletionProtection,
    required this.displayName,
    this.exadataInfrastructure,
    required this.exascaleDbStorageVaultId,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': displayName,
      'exadataInfrastructure': ?exadataInfrastructure,
      'exascaleDbStorageVaultId': exascaleDbStorageVaultId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<ExascaleDbStorageVaultProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ExascaleDbStorageVaultArgs.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      exadataInfrastructure: (() { final guardedValue = map['exadataInfrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exascaleDbStorageVaultId: pulumi.Input.fromValue(map['exascaleDbStorageVaultId'] as String),
      gcpOracleZone: (() { final guardedValue = map['gcpOracleZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ExascaleDbStorageVaultProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
