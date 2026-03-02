// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_backup_config.dart';
import 'volume_block_device.dart';
import 'volume_cache_parameters.dart';
import 'volume_export_policy.dart';
import 'volume_hybrid_replication_parameters.dart';
import 'volume_restore_parameters.dart';
import 'volume_snapshot_policy.dart';
import 'volume_tiering_policy.dart';

/// {@template pulumi_netapp_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_volume_args_doc}
class VolumeArgs {
  /// Backup configuration for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeBackupConfig>? backupConfig;
  /// Block device represents the device(s) which are stored in the block volume.
  /// Currently, only one block device is permitted per Volume.
  /// Structure is documented below.
  final pulumi.Input<List<VolumeBlockDevice>>? blockDevices;
  /// Cache parameters for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeCacheParameters>? cacheParameters;
  /// Capacity of the volume (in GiB).
  final pulumi.Input<String> capacityGib;
  /// Policy to determine if the volume should be deleted forcefully.
  /// Volumes may have nested snapshot resources. Deleting such a volume will fail.
  /// Setting this parameter to FORCE will delete volumes including nested snapshots.
  /// Possible values: DEFAULT, FORCE.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// Structure is documented below.
  final pulumi.Input<VolumeExportPolicy>? exportPolicy;
  /// [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [external replication](https://docs.cloud.google.com/netapp/volumes/docs/protect-data/replicate-ontap/overview)
  /// are two types of Hybrid Replication. This parameter block specifies the parameters for a hybrid replication.
  /// Structure is documented below.
  final pulumi.Input<VolumeHybridReplicationParameters>? hybridReplicationParameters;
  /// Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  final pulumi.Input<bool>? kerberosEnabled;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  final pulumi.Input<bool>? largeCapacity;
  /// Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  final pulumi.Input<String> location;
  /// Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// Only the volume with largeCapacity will be allowed to have multiple endpoints.
  final pulumi.Input<bool>? multipleEndpoints;
  /// The name of the volume. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// Each value may be one of: `NFSV3`, `NFSV4`, `SMB`, `ISCSI`.
  final pulumi.Input<List<String>> protocols;
  /// Used to create this volume from a snapshot (= cloning) or an backup.
  /// Structure is documented below.
  final pulumi.Input<VolumeRestoreParameters>? restoreParameters;
  /// List of actions that are restricted on this volume.
  /// Each value may be one of: `DELETE`.
  final pulumi.Input<List<String>>? restrictedActions;
  /// Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol.
  /// Possible values are: `NTFS`, `UNIX`.
  final pulumi.Input<String>? securityStyle;
  /// Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  final pulumi.Input<String>? shareName;
  /// Settings for volumes with SMB access.
  /// Each value may be one of: `ENCRYPT_DATA`, `BROWSABLE`, `CHANGE_NOTIFY`, `NON_BROWSABLE`, `OPLOCKS`, `SHOW_SNAPSHOT`, `SHOW_PREVIOUS_VERSIONS`, `ACCESS_BASED_ENUMERATION`, `CONTINUOUSLY_AVAILABLE`.
  final pulumi.Input<List<String>>? smbSettings;
  /// If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  final pulumi.Input<bool>? snapshotDirectory;
  /// Snapshot policy defines the schedule for automatic snapshot creation.
  /// To disable automatic snapshot creation you have to remove the whole snapshot_policy block.
  /// Structure is documented below.
  final pulumi.Input<VolumeSnapshotPolicy>? snapshotPolicy;
  /// Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  final pulumi.Input<String> storagePool;
  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final pulumi.Input<double>? throughputMibps;
  /// Tiering policy for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeTieringPolicy>? tieringPolicy;
  /// Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  final pulumi.Input<String>? unixPermissions;

  /// Creates a new [VolumeArgs].
  /// [backupConfig] Backup configuration for the volume.
  /// [blockDevices] Block device represents the device(s) which are stored in the block volume.
  /// [cacheParameters] Cache parameters for the volume.
  /// [capacityGib] Capacity of the volume (in GiB).
  /// [deletionPolicy] Policy to determine if the volume should be deleted forcefully.
  /// [description] An optional description of this resource.
  /// [exportPolicy] Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// [hybridReplicationParameters] [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [kerberosEnabled] Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [largeCapacity] Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  /// [location] Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  /// [multipleEndpoints] Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// [name] The name of the volume. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocols] The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// [restoreParameters] Used to create this volume from a snapshot (= cloning) or an backup.
  /// [restrictedActions] List of actions that are restricted on this volume.
  /// [securityStyle] Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// [shareName] Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  /// [smbSettings] Settings for volumes with SMB access.
  /// [snapshotDirectory] If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  /// [snapshotPolicy] Snapshot policy defines the schedule for automatic snapshot creation.
  /// [storagePool] Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  /// [throughputMibps] Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  /// [tieringPolicy] Tiering policy for the volume.
  /// [unixPermissions] Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  VolumeArgs({
    this.backupConfig,
    this.blockDevices,
    this.cacheParameters,
    required this.capacityGib,
    this.deletionPolicy,
    this.description,
    this.exportPolicy,
    this.hybridReplicationParameters,
    this.kerberosEnabled,
    this.labels,
    this.largeCapacity,
    required this.location,
    this.multipleEndpoints,
    this.name,
    this.project,
    required this.protocols,
    this.restoreParameters,
    this.restrictedActions,
    this.securityStyle,
    this.shareName,
    this.smbSettings,
    this.snapshotDirectory,
    this.snapshotPolicy,
    required this.storagePool,
    this.throughputMibps,
    this.tieringPolicy,
    this.unixPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig': ?pulumi.Input.mapOptionalInputValue<VolumeBackupConfig, Map<String, dynamic>>(backupConfig, (value) => value.toMap()),
      'blockDevices': ?pulumi.Input.mapOptionalInputValue<List<VolumeBlockDevice>, List<Map<String, dynamic>>>(blockDevices, (value) => pulumi.Input.encodeList<VolumeBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheParameters': ?pulumi.Input.mapOptionalInputValue<VolumeCacheParameters, Map<String, dynamic>>(cacheParameters, (value) => value.toMap()),
      'capacityGib': capacityGib,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeExportPolicy, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'hybridReplicationParameters': ?pulumi.Input.mapOptionalInputValue<VolumeHybridReplicationParameters, Map<String, dynamic>>(hybridReplicationParameters, (value) => value.toMap()),
      'kerberosEnabled': ?kerberosEnabled,
      'labels': ?labels,
      'largeCapacity': ?largeCapacity,
      'location': location,
      'multipleEndpoints': ?multipleEndpoints,
      'name': ?name,
      'project': ?project,
      'protocols': protocols,
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<VolumeRestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'restrictedActions': ?restrictedActions,
      'securityStyle': ?securityStyle,
      'shareName': ?shareName,
      'smbSettings': ?smbSettings,
      'snapshotDirectory': ?snapshotDirectory,
      'snapshotPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPolicy, Map<String, dynamic>>(snapshotPolicy, (value) => value.toMap()),
      'storagePool': storagePool,
      'throughputMibps': ?throughputMibps,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeTieringPolicy, Map<String, dynamic>>(tieringPolicy, (value) => value.toMap()),
      'unixPermissions': ?unixPermissions,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      backupConfig: map['backupConfig'] == null ? null : (VolumeBackupConfig.fromMap((map['backupConfig']! as Map).cast<String, dynamic>())).input(),
      blockDevices: map['blockDevices'] == null ? null : (pulumi.Input.decodeList<VolumeBlockDevice>(map['blockDevices']!, (value) => VolumeBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cacheParameters: map['cacheParameters'] == null ? null : (VolumeCacheParameters.fromMap((map['cacheParameters']! as Map).cast<String, dynamic>())).input(),
      capacityGib: (map['capacityGib'] as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      exportPolicy: map['exportPolicy'] == null ? null : (VolumeExportPolicy.fromMap((map['exportPolicy']! as Map).cast<String, dynamic>())).input(),
      hybridReplicationParameters: map['hybridReplicationParameters'] == null ? null : (VolumeHybridReplicationParameters.fromMap((map['hybridReplicationParameters']! as Map).cast<String, dynamic>())).input(),
      kerberosEnabled: map['kerberosEnabled'] == null ? null : (map['kerberosEnabled']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      largeCapacity: map['largeCapacity'] == null ? null : (map['largeCapacity']! as bool).input(),
      location: (map['location'] as String).input(),
      multipleEndpoints: map['multipleEndpoints'] == null ? null : (map['multipleEndpoints']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (VolumeRestoreParameters.fromMap((map['restoreParameters']! as Map).cast<String, dynamic>())).input(),
      restrictedActions: map['restrictedActions'] == null ? null : ((map['restrictedActions']! as List).cast<String>()).input(),
      securityStyle: map['securityStyle'] == null ? null : (map['securityStyle']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
      smbSettings: map['smbSettings'] == null ? null : ((map['smbSettings']! as List).cast<String>()).input(),
      snapshotDirectory: map['snapshotDirectory'] == null ? null : (map['snapshotDirectory']! as bool).input(),
      snapshotPolicy: map['snapshotPolicy'] == null ? null : (VolumeSnapshotPolicy.fromMap((map['snapshotPolicy']! as Map).cast<String, dynamic>())).input(),
      storagePool: (map['storagePool'] as String).input(),
      throughputMibps: map['throughputMibps'] == null ? null : (map['throughputMibps']! as double).input(),
      tieringPolicy: map['tieringPolicy'] == null ? null : (VolumeTieringPolicy.fromMap((map['tieringPolicy']! as Map).cast<String, dynamic>())).input(),
      unixPermissions: map['unixPermissions'] == null ? null : (map['unixPermissions']! as String).input(),
    );
  }
}

