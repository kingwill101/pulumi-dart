// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties.dart';
import 'restore_workload_compute_instance_target_environment.dart';
import 'restore_workload_disk_restore_properties.dart';
import 'restore_workload_disk_target_environment.dart';
import 'restore_workload_region_disk_target_environment.dart';

/// {@template pulumi_backupdisasterrecovery_restore_workload_restore_workload_args_doc}
/// The set of arguments for RestoreWorkload.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_restore_workload_restore_workload_args_doc}
class RestoreWorkloadArgs {
  /// Required. The ID of the backup to restore from.
  final pulumi.Input<String> backupId;
  /// Required. The ID of the backup vault.
  final pulumi.Input<String> backupVaultId;
  /// Optional. A field mask used to clear server-side default values during restore.
  final pulumi.Input<String>? clearOverridesFieldMask;
  /// Optional. Compute Engine instance properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestoreProperties>? computeInstanceRestoreProperties;
  /// The destination environment for GCE VM restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceTargetEnvironment>? computeInstanceTargetEnvironment;
  /// Required. The ID of the data source.
  final pulumi.Input<String> dataSourceId;
  /// Optional. If true (default), running terraform destroy will delete the live resource in GCP.
  /// If false, only the restore record is removed from the state, leaving the resource active.
  final pulumi.Input<bool>? deleteRestoredInstance;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskRestoreProperties>? diskRestoreProperties;
  /// The destination environment for zonal disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskTargetEnvironment>? diskTargetEnvironment;
  /// Required. The location for the backup vault.
  final pulumi.Input<String> location;
  /// (Optional, Deprecated)
  /// The resource name of the backup instance.
  ///
  /// &gt; **Warning:** `name` is deprecated and will be removed in a future major release. The backup is identified by the parameters (location, backup_vault_id, data_source_id, backup_id).
  final pulumi.Input<String>? name;
  /// The destination environment for regional disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadRegionDiskTargetEnvironment>? regionDiskTargetEnvironment;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID
  /// so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed.
  final pulumi.Input<String>? requestId;

  /// Creates a new [RestoreWorkloadArgs].
  /// [backupId] Required. The ID of the backup to restore from.
  /// [backupVaultId] Required. The ID of the backup vault.
  /// [clearOverridesFieldMask] Optional. A field mask used to clear server-side default values during restore.
  /// [computeInstanceRestoreProperties] Optional. Compute Engine instance properties to be overridden during restore.
  /// [computeInstanceTargetEnvironment] The destination environment for GCE VM restoration.
  /// [dataSourceId] Required. The ID of the data source.
  /// [deleteRestoredInstance] Optional. If true (default), running terraform destroy will delete the live resource in GCP.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [diskRestoreProperties] Optional. Disk properties to be overridden during restore.
  /// [diskTargetEnvironment] The destination environment for zonal disk restoration.
  /// [location] Required. The location for the backup vault.
  /// [name] (Optional, Deprecated)
  /// [regionDiskTargetEnvironment] The destination environment for regional disk restoration.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID
  const RestoreWorkloadArgs({
    required this.backupId,
    required this.backupVaultId,
    this.clearOverridesFieldMask,
    this.computeInstanceRestoreProperties,
    this.computeInstanceTargetEnvironment,
    required this.dataSourceId,
    this.deleteRestoredInstance,
    this.deletionPolicy,
    this.diskRestoreProperties,
    this.diskTargetEnvironment,
    required this.location,
    this.name,
    this.regionDiskTargetEnvironment,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'backupVaultId': backupVaultId,
      'clearOverridesFieldMask': ?clearOverridesFieldMask,
      'computeInstanceRestoreProperties': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestoreProperties, Map<String, dynamic>>(computeInstanceRestoreProperties, (value) => value.toMap()),
      'computeInstanceTargetEnvironment': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceTargetEnvironment, Map<String, dynamic>>(computeInstanceTargetEnvironment, (value) => value.toMap()),
      'dataSourceId': dataSourceId,
      'deleteRestoredInstance': ?deleteRestoredInstance,
      'deletionPolicy': ?deletionPolicy,
      'diskRestoreProperties': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadDiskRestoreProperties, Map<String, dynamic>>(diskRestoreProperties, (value) => value.toMap()),
      'diskTargetEnvironment': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadDiskTargetEnvironment, Map<String, dynamic>>(diskTargetEnvironment, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'regionDiskTargetEnvironment': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadRegionDiskTargetEnvironment, Map<String, dynamic>>(regionDiskTargetEnvironment, (value) => value.toMap()),
      'requestId': ?requestId,
    };
  }

  factory RestoreWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadArgs(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      clearOverridesFieldMask: (() { final guardedValue = map['clearOverridesFieldMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeInstanceRestoreProperties: (() { final guardedValue = map['computeInstanceRestoreProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadComputeInstanceRestoreProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeInstanceTargetEnvironment: (() { final guardedValue = map['computeInstanceTargetEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadComputeInstanceTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      deleteRestoredInstance: (() { final guardedValue = map['deleteRestoredInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskRestoreProperties: (() { final guardedValue = map['diskRestoreProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadDiskRestoreProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskTargetEnvironment: (() { final guardedValue = map['diskTargetEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadDiskTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionDiskTargetEnvironment: (() { final guardedValue = map['regionDiskTargetEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadRegionDiskTargetEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
