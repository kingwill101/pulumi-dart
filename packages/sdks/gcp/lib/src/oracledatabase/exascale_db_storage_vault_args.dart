// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_db_storage_vault_properties.dart';

/// {@template pulumi_oracledatabase_exascale_db_storage_vault_exascale_db_storage_vault_args_doc}
/// The set of arguments for ExascaleDbStorageVault.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_exascale_db_storage_vault_exascale_db_storage_vault_args_doc}
class ExascaleDbStorageVaultArgs {
  final pulumi.Input<bool>? deletionProtection;
  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  final pulumi.Input<String> displayName;
  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String> exascaleDbStorageVaultId;
  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;
  /// The labels or tags associated with the ExascaleDbStorageVault.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  /// Structure is documented below.
  final pulumi.Input<ExascaleDbStorageVaultProperties> properties;

  /// Creates a new [ExascaleDbStorageVaultArgs].
  /// [deletionProtection] Optional.
  /// [displayName] The display name for the ExascaleDbStorageVault. The name does not have to
  /// [exascaleDbStorageVaultId] The ID of the ExascaleDbStorageVault to create. This value is
  /// [gcpOracleZone] The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// [labels] The labels or tags associated with the ExascaleDbStorageVault.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of the ExascaleDbStorageVault.
  ExascaleDbStorageVaultArgs({
    this.deletionProtection,
    required this.displayName,
    required this.exascaleDbStorageVaultId,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'displayName': displayName,
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
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      exascaleDbStorageVaultId: (map['exascaleDbStorageVaultId'] as String).input(),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : (map['gcpOracleZone'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      properties: (ExascaleDbStorageVaultProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

