// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_exascale_db_storage_vaults_exascale_db_storage_vault_property.dart';

class GetExascaleDbStorageVaultsExascaleDbStorageVault {
  /// The date and time when the ExascaleDbStorageVault was created.
  final pulumi.Input<String> createTime;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail.
  final pulumi.Input<bool> deletionProtection;
  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  final pulumi.Input<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// The ID of the subscription entitlement associated with the
  /// ExascaleDbStorageVault.
  final pulumi.Input<String> entitlementId;
  /// The Exadata Infrastructure resource on which ExascaleDbStorageVault resource is created.
  /// In the format: projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_extradata_infrastructure}
  final pulumi.Input<String> exadataInfrastructure;
  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> exascaleDbStorageVaultId;
  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String> gcpOracleZone;
  /// The labels or tags associated with the ExascaleDbStorageVault.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>> labels;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// Identifier. The resource name of the ExascaleDbStorageVault.
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  final pulumi.Input<String> name;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String> project;
  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  final pulumi.Input<List<GetExascaleDbStorageVaultsExascaleDbStorageVaultProperty>> properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;

  /// Creates a new [GetExascaleDbStorageVaultsExascaleDbStorageVault].
  /// [createTime] The date and time when the ExascaleDbStorageVault was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [deletionProtection] Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail.
  /// [displayName] The display name for the ExascaleDbStorageVault. The name does not have to
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the
  /// [exadataInfrastructure] The Exadata Infrastructure resource on which ExascaleDbStorageVault resource is created.
  /// [exascaleDbStorageVaultId] The ID of the ExascaleDbStorageVault to create. This value is
  /// [gcpOracleZone] The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// [labels] The labels or tags associated with the ExascaleDbStorageVault.
  /// [location] The location of the resource.
  /// [name] Identifier. The resource name of the ExascaleDbStorageVault.
  /// [project] The project to which the resource belongs. If it
  /// [properties] The properties of the ExascaleDbStorageVault.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  const GetExascaleDbStorageVaultsExascaleDbStorageVault({
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.entitlementId,
    required this.exadataInfrastructure,
    required this.exascaleDbStorageVaultId,
    required this.gcpOracleZone,
    required this.labels,
    required this.location,
    required this.name,
    required this.project,
    required this.properties,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'entitlementId': entitlementId,
      'exadataInfrastructure': exadataInfrastructure,
      'exascaleDbStorageVaultId': exascaleDbStorageVaultId,
      'gcpOracleZone': gcpOracleZone,
      'labels': labels,
      'location': location,
      'name': name,
      'project': project,
      'properties': pulumi.Input.mapInputValue<List<GetExascaleDbStorageVaultsExascaleDbStorageVaultProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GetExascaleDbStorageVaultsExascaleDbStorageVaultProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetExascaleDbStorageVaultsExascaleDbStorageVault.fromMap(Map<String, dynamic> map) {
    return GetExascaleDbStorageVaultsExascaleDbStorageVault(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      entitlementId: pulumi.Input.fromValue(map['entitlementId'] as String),
      exadataInfrastructure: pulumi.Input.fromValue(map['exadataInfrastructure'] as String),
      exascaleDbStorageVaultId: pulumi.Input.fromValue(map['exascaleDbStorageVaultId'] as String),
      gcpOracleZone: pulumi.Input.fromValue(map['gcpOracleZone'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetExascaleDbStorageVaultsExascaleDbStorageVaultProperty>(map['properties']!, (value) => GetExascaleDbStorageVaultsExascaleDbStorageVaultProperty.fromMap((value as Map).cast<String, dynamic>()))),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}
