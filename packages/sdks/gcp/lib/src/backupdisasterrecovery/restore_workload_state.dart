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
  final pulumi.Input<RestoreWorkloadComputeInstanceRestoreProperties>? computeInstanceRestoreProperties;
  /// Optional. The destination environment for GCE VM restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceTargetEnvironment>? computeInstanceTargetEnvironment;
  /// Required. The ID of the data source.
  final pulumi.Input<String>? dataSourceId;
  final pulumi.Input<bool>? deleteRestoredInstance;
  /// Optional. Disk properties to be overridden during restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskRestoreProperties>? diskRestoreProperties;
  /// Optional. The destination environment for zonal disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskTargetEnvironment>? diskTargetEnvironment;
  /// Required. The location for the backup vault.
  final pulumi.Input<String>? location;
  /// Required. The resource name of the backup instance.
  final pulumi.Input<String>? name;
  /// Optional. The destination environment for regional disk restoration.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadRegionDiskTargetEnvironment>? regionDiskTargetEnvironment;
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
    pulumi.Output<String>? backupId,
    pulumi.Output<String>? backupVaultId,
    pulumi.Output<String>? clearOverridesFieldMask,
    pulumi.Output<RestoreWorkloadComputeInstanceRestoreProperties>? computeInstanceRestoreProperties,
    pulumi.Output<RestoreWorkloadComputeInstanceTargetEnvironment>? computeInstanceTargetEnvironment,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<bool>? deleteRestoredInstance,
    pulumi.Output<RestoreWorkloadDiskRestoreProperties>? diskRestoreProperties,
    pulumi.Output<RestoreWorkloadDiskTargetEnvironment>? diskTargetEnvironment,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<RestoreWorkloadRegionDiskTargetEnvironment>? regionDiskTargetEnvironment,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<RestoreWorkloadTargetResource>>? targetResources,
  }) :
      backupId = pulumi.Input.asOptionalInput<String>(backupId),
      backupVaultId = pulumi.Input.asOptionalInput<String>(backupVaultId),
      clearOverridesFieldMask = pulumi.Input.asOptionalInput<String>(clearOverridesFieldMask),
      computeInstanceRestoreProperties = pulumi.Input.asOptionalInput<RestoreWorkloadComputeInstanceRestoreProperties>(computeInstanceRestoreProperties),
      computeInstanceTargetEnvironment = pulumi.Input.asOptionalInput<RestoreWorkloadComputeInstanceTargetEnvironment>(computeInstanceTargetEnvironment),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      deleteRestoredInstance = pulumi.Input.asOptionalInput<bool>(deleteRestoredInstance),
      diskRestoreProperties = pulumi.Input.asOptionalInput<RestoreWorkloadDiskRestoreProperties>(diskRestoreProperties),
      diskTargetEnvironment = pulumi.Input.asOptionalInput<RestoreWorkloadDiskTargetEnvironment>(diskTargetEnvironment),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      regionDiskTargetEnvironment = pulumi.Input.asOptionalInput<RestoreWorkloadRegionDiskTargetEnvironment>(regionDiskTargetEnvironment),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      targetResources = pulumi.Input.asOptionalInput<List<RestoreWorkloadTargetResource>>(targetResources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'backupVaultId': ?backupVaultId,
      'clearOverridesFieldMask': ?clearOverridesFieldMask,
      'computeInstanceRestoreProperties': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestoreProperties, Map<String, dynamic>>(computeInstanceRestoreProperties, (value) => value.toMap()),
      'computeInstanceTargetEnvironment': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceTargetEnvironment, Map<String, dynamic>>(computeInstanceTargetEnvironment, (value) => value.toMap()),
      'dataSourceId': ?dataSourceId,
      'deleteRestoredInstance': ?deleteRestoredInstance,
      'diskRestoreProperties': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadDiskRestoreProperties, Map<String, dynamic>>(diskRestoreProperties, (value) => value.toMap()),
      'diskTargetEnvironment': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadDiskTargetEnvironment, Map<String, dynamic>>(diskTargetEnvironment, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'regionDiskTargetEnvironment': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadRegionDiskTargetEnvironment, Map<String, dynamic>>(regionDiskTargetEnvironment, (value) => value.toMap()),
      'requestId': ?requestId,
      'targetResources': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadTargetResource>, List<Map<String, dynamic>>>(targetResources, (value) => pulumi.Input.encodeList<RestoreWorkloadTargetResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestoreWorkloadState.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadState(
      backupId: map['backupId'] == null ? null : pulumi.Output.create<String>(map['backupId'] as String),
      backupVaultId: map['backupVaultId'] == null ? null : pulumi.Output.create<String>(map['backupVaultId'] as String),
      clearOverridesFieldMask: map['clearOverridesFieldMask'] == null ? null : pulumi.Output.create<String>(map['clearOverridesFieldMask'] as String),
      computeInstanceRestoreProperties: map['computeInstanceRestoreProperties'] == null ? null : pulumi.Output.create<RestoreWorkloadComputeInstanceRestoreProperties>(RestoreWorkloadComputeInstanceRestoreProperties.fromMap((map['computeInstanceRestoreProperties'] as Map).cast<String, dynamic>())),
      computeInstanceTargetEnvironment: map['computeInstanceTargetEnvironment'] == null ? null : pulumi.Output.create<RestoreWorkloadComputeInstanceTargetEnvironment>(RestoreWorkloadComputeInstanceTargetEnvironment.fromMap((map['computeInstanceTargetEnvironment'] as Map).cast<String, dynamic>())),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      deleteRestoredInstance: map['deleteRestoredInstance'] == null ? null : pulumi.Output.create<bool>(map['deleteRestoredInstance'] as bool),
      diskRestoreProperties: map['diskRestoreProperties'] == null ? null : pulumi.Output.create<RestoreWorkloadDiskRestoreProperties>(RestoreWorkloadDiskRestoreProperties.fromMap((map['diskRestoreProperties'] as Map).cast<String, dynamic>())),
      diskTargetEnvironment: map['diskTargetEnvironment'] == null ? null : pulumi.Output.create<RestoreWorkloadDiskTargetEnvironment>(RestoreWorkloadDiskTargetEnvironment.fromMap((map['diskTargetEnvironment'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regionDiskTargetEnvironment: map['regionDiskTargetEnvironment'] == null ? null : pulumi.Output.create<RestoreWorkloadRegionDiskTargetEnvironment>(RestoreWorkloadRegionDiskTargetEnvironment.fromMap((map['regionDiskTargetEnvironment'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      targetResources: map['targetResources'] == null ? null : pulumi.Output.create<List<RestoreWorkloadTargetResource>>(pulumi.Input.decodeList<RestoreWorkloadTargetResource>(map['targetResources'], (value) => RestoreWorkloadTargetResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

