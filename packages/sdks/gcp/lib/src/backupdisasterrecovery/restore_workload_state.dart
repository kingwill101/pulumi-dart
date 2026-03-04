// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties.dart';
import 'restore_workload_compute_instance_target_environment.dart';
import 'restore_workload_disk_restore_properties.dart';
import 'restore_workload_disk_target_environment.dart';
import 'restore_workload_region_disk_target_environment.dart';
import 'restore_workload_target_resource.dart';

/// Input properties used for looking up and filtering RestoreWorkload resources.
class RestoreWorkloadState {
  /// Required. The ID of the backup to restore from.
  final pulumi.Input<String>? backupId;

  /// Required. The ID of the backup vault.
  final pulumi.Input<String>? backupVaultId;

  /// Optional. A field mask used to clear server-side default values during restore.
  final pulumi.Input<String>? clearOverridesFieldMask;

  /// Optional. Compute Engine instance properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestoreProperties>?
  computeInstanceRestoreProperties;

  /// Optional. The destination environment for GCE VM restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceTargetEnvironment>?
  computeInstanceTargetEnvironment;

  /// Required. The ID of the data source.
  final pulumi.Input<String>? dataSourceId;
  final pulumi.Input<bool>? deleteRestoredInstance;

  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskRestoreProperties>?
  diskRestoreProperties;

  /// Optional. The destination environment for zonal disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskTargetEnvironment>?
  diskTargetEnvironment;

  /// Required. The location for the backup vault.
  final pulumi.Input<String>? location;

  /// Required. The resource name of the backup instance.
  final pulumi.Input<String>? name;

  /// Optional. The destination environment for regional disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadRegionDiskTargetEnvironment>?
  regionDiskTargetEnvironment;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID
  /// so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed.
  final pulumi.Input<String>? requestId;

  /// Output only. Details of the target resource created/modified as part of restore.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadTargetResource>>? targetResources;

  /// Creates a new [RestoreWorkloadState].
  /// [backupId] Required. The ID of the backup to restore from.
  /// [backupVaultId] Required. The ID of the backup vault.
  /// [clearOverridesFieldMask] Optional. A field mask used to clear server-side default values during restore.
  /// [computeInstanceRestoreProperties] Optional. Compute Engine instance properties to be overridden during restore.
  /// [computeInstanceTargetEnvironment] Optional. The destination environment for GCE VM restoration.
  /// [dataSourceId] Required. The ID of the data source.
  /// [deleteRestoredInstance] Optional.
  /// [diskRestoreProperties] Optional. Disk properties to be overridden during restore.
  /// [diskTargetEnvironment] Optional. The destination environment for zonal disk restoration.
  /// [location] Required. The location for the backup vault.
  /// [name] Required. The resource name of the backup instance.
  /// [regionDiskTargetEnvironment] Optional. The destination environment for regional disk restoration.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID
  /// [targetResources] Output only. Details of the target resource created/modified as part of restore.
  RestoreWorkloadState({
    this.backupId,
    this.backupVaultId,
    this.clearOverridesFieldMask,
    this.computeInstanceRestoreProperties,
    this.computeInstanceTargetEnvironment,
    this.dataSourceId,
    this.deleteRestoredInstance,
    this.diskRestoreProperties,
    this.diskTargetEnvironment,
    this.location,
    this.name,
    this.regionDiskTargetEnvironment,
    this.requestId,
    this.targetResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'backupVaultId': ?backupVaultId,
      'clearOverridesFieldMask': ?clearOverridesFieldMask,
      'computeInstanceRestoreProperties':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadComputeInstanceRestoreProperties,
            Map<String, dynamic>
          >(computeInstanceRestoreProperties, (value) => value.toMap()),
      'computeInstanceTargetEnvironment':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadComputeInstanceTargetEnvironment,
            Map<String, dynamic>
          >(computeInstanceTargetEnvironment, (value) => value.toMap()),
      'dataSourceId': ?dataSourceId,
      'deleteRestoredInstance': ?deleteRestoredInstance,
      'diskRestoreProperties':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadDiskRestoreProperties,
            Map<String, dynamic>
          >(diskRestoreProperties, (value) => value.toMap()),
      'diskTargetEnvironment':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadDiskTargetEnvironment,
            Map<String, dynamic>
          >(diskTargetEnvironment, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'regionDiskTargetEnvironment':
          ?pulumi.Input.mapOptionalInputValue<
            RestoreWorkloadRegionDiskTargetEnvironment,
            Map<String, dynamic>
          >(regionDiskTargetEnvironment, (value) => value.toMap()),
      'requestId': ?requestId,
      'targetResources':
          ?pulumi.Input.mapOptionalInputValue<
            List<RestoreWorkloadTargetResource>,
            List<Map<String, dynamic>>
          >(
            targetResources,
            (value) =>
                pulumi.Input.encodeList<
                  RestoreWorkloadTargetResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RestoreWorkloadState.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadState(
      backupId: (() {
        final guardedValue = map['backupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupVaultId: (() {
        final guardedValue = map['backupVaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clearOverridesFieldMask: (() {
        final guardedValue = map['clearOverridesFieldMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeInstanceRestoreProperties: (() {
        final guardedValue = map['computeInstanceRestoreProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadComputeInstanceRestoreProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      computeInstanceTargetEnvironment: (() {
        final guardedValue = map['computeInstanceTargetEnvironment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadComputeInstanceTargetEnvironment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataSourceId: (() {
        final guardedValue = map['dataSourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteRestoredInstance: (() {
        final guardedValue = map['deleteRestoredInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      diskRestoreProperties: (() {
        final guardedValue = map['diskRestoreProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadDiskRestoreProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diskTargetEnvironment: (() {
        final guardedValue = map['diskTargetEnvironment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadDiskTargetEnvironment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionDiskTargetEnvironment: (() {
        final guardedValue = map['regionDiskTargetEnvironment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestoreWorkloadRegionDiskTargetEnvironment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResources: (() {
        final guardedValue = map['targetResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RestoreWorkloadTargetResource>(
            guardedValue,
            (value) => RestoreWorkloadTargetResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
