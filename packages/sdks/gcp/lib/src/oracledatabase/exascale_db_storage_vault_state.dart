// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_db_storage_vault_properties.dart';

/// Input properties used for looking up and filtering ExascaleDbStorageVault resources.
class ExascaleDbStorageVaultState {
  /// The date and time when the ExascaleDbStorageVault was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the subscription entitlement associated with the
  /// ExascaleDbStorageVault.
  final pulumi.Input<String>? entitlementId;
  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final pulumi.Input<String>? exascaleDbStorageVaultId;
  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;
  /// The labels or tags associated with the ExascaleDbStorageVault.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the ExascaleDbStorageVault.
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  /// Structure is documented below.
  final pulumi.Input<ExascaleDbStorageVaultProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [ExascaleDbStorageVaultState].
  /// [createTime] The date and time when the ExascaleDbStorageVault was created.
  /// [deletionProtection] Optional.
  /// [displayName] The display name for the ExascaleDbStorageVault. The name does not have to
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] The ID of the subscription entitlement associated with the
  /// [exascaleDbStorageVaultId] The ID of the ExascaleDbStorageVault to create. This value is
  /// [gcpOracleZone] The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// [labels] The labels or tags associated with the ExascaleDbStorageVault.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the ExascaleDbStorageVault.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] The properties of the ExascaleDbStorageVault.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  ExascaleDbStorageVaultState({
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entitlementId,
    pulumi.Output<String>? exascaleDbStorageVaultId,
    pulumi.Output<String>? gcpOracleZone,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<ExascaleDbStorageVaultProperties>? properties,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entitlementId = pulumi.Input.asOptionalInput<String>(entitlementId),
      exascaleDbStorageVaultId = pulumi.Input.asOptionalInput<String>(exascaleDbStorageVaultId),
      gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<ExascaleDbStorageVaultProperties>(properties),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'exascaleDbStorageVaultId': ?exascaleDbStorageVaultId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<ExascaleDbStorageVaultProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory ExascaleDbStorageVaultState.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entitlementId: map['entitlementId'] == null ? null : pulumi.Output.create<String>(map['entitlementId'] as String),
      exascaleDbStorageVaultId: map['exascaleDbStorageVaultId'] == null ? null : pulumi.Output.create<String>(map['exascaleDbStorageVaultId'] as String),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : pulumi.Output.create<String>(map['gcpOracleZone'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ExascaleDbStorageVaultProperties>(ExascaleDbStorageVaultProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}

