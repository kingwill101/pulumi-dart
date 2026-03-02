// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_backup_config.dart';
import 'volume_block_device.dart';
import 'volume_cache_parameters.dart';
import 'volume_export_policy.dart';
import 'volume_hybrid_replication_parameters.dart';
import 'volume_mount_option.dart';
import 'volume_restore_parameters.dart';
import 'volume_snapshot_policy.dart';
import 'volume_tiering_policy.dart';

/// Input properties used for looking up and filtering Volume resources.
class VolumeState {
  /// Reports the resource name of the Active Directory policy being used. Inherited from storage pool.
  final pulumi.Input<String>? activeDirectory;
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
  final pulumi.Input<String>? capacityGib;
  /// Output only. Size of the volume cold tier data in GiB.
  final pulumi.Input<String>? coldTierSizeGib;
  /// Create time of the volume. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// Policy to determine if the volume should be deleted forcefully.
  /// Volumes may have nested snapshot resources. Deleting such a volume will fail.
  /// Setting this parameter to FORCE will delete volumes including nested snapshots.
  /// Possible values: DEFAULT, FORCE.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Reports the data-at-rest encryption type of the volume. Inherited from storage pool.
  final pulumi.Input<String>? encryptionType;
  /// Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// Structure is documented below.
  final pulumi.Input<VolumeExportPolicy>? exportPolicy;
  /// Indicates whether the volume is part of a volume replication relationship.
  final pulumi.Input<bool>? hasReplication;
  /// Total hot tier data rounded down to the nearest GiB used by the volume. This field is only used for flex Service Level
  final pulumi.Input<String>? hotTierSizeUsedGib;
  /// [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [external replication](https://docs.cloud.google.com/netapp/volumes/docs/protect-data/replicate-ontap/overview)
  /// are two types of Hybrid Replication. This parameter block specifies the parameters for a hybrid replication.
  /// Structure is documented below.
  final pulumi.Input<VolumeHybridReplicationParameters>? hybridReplicationParameters;
  /// Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  final pulumi.Input<bool>? kerberosEnabled;
  /// Reports the CMEK policy resurce name being used for volume encryption. Inherited from storage pool.
  final pulumi.Input<String>? kmsConfig;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  final pulumi.Input<bool>? largeCapacity;
  /// Flag indicating if the volume is NFS LDAP enabled or not. Inherited from storage pool.
  final pulumi.Input<bool>? ldapEnabled;
  /// Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  final pulumi.Input<String>? location;
  /// Reports mount instructions for this volume.
  /// Structure is documented below.
  final pulumi.Input<List<VolumeMountOption>>? mountOptions;
  /// Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// Only the volume with largeCapacity will be allowed to have multiple endpoints.
  final pulumi.Input<bool>? multipleEndpoints;
  /// The name of the volume. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`. Inherited from storage pool.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// Each value may be one of: `NFSV3`, `NFSV4`, `SMB`, `ISCSI`.
  final pulumi.Input<List<String>>? protocols;
  /// Name of the Private Service Access allocated range. Inherited from storage pool.
  final pulumi.Input<String>? psaRange;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Specifies the replica zone for regional volume.
  final pulumi.Input<String>? replicaZone;
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
  /// Service level of the volume. Inherited from storage pool. Supported values are : PREMIUM, EXTREME, STANDARD, FLEX.
  final pulumi.Input<String>? serviceLevel;
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
  /// State of the volume.
  final pulumi.Input<String>? state;
  /// State details of the volume.
  final pulumi.Input<String>? stateDetails;
  /// Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  final pulumi.Input<String>? storagePool;
  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final pulumi.Input<double>? throughputMibps;
  /// Tiering policy for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeTieringPolicy>? tieringPolicy;
  /// Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  final pulumi.Input<String>? unixPermissions;
  /// Used capacity of the volume (in GiB). This is computed periodically and it does not represent the realtime usage.
  final pulumi.Input<String>? usedGib;
  /// Specifies the active zone for regional volume.
  final pulumi.Input<String>? zone;

  /// Creates a new [VolumeState].
  /// [activeDirectory] Reports the resource name of the Active Directory policy being used. Inherited from storage pool.
  /// [backupConfig] Backup configuration for the volume.
  /// [blockDevices] Block device represents the device(s) which are stored in the block volume.
  /// [cacheParameters] Cache parameters for the volume.
  /// [capacityGib] Capacity of the volume (in GiB).
  /// [coldTierSizeGib] Output only. Size of the volume cold tier data in GiB.
  /// [createTime] Create time of the volume. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [deletionPolicy] Policy to determine if the volume should be deleted forcefully.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionType] Reports the data-at-rest encryption type of the volume. Inherited from storage pool.
  /// [exportPolicy] Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// [hasReplication] Indicates whether the volume is part of a volume replication relationship.
  /// [hotTierSizeUsedGib] Total hot tier data rounded down to the nearest GiB used by the volume. This field is only used for flex Service Level
  /// [hybridReplicationParameters] [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [kerberosEnabled] Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  /// [kmsConfig] Reports the CMEK policy resurce name being used for volume encryption. Inherited from storage pool.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [largeCapacity] Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  /// [ldapEnabled] Flag indicating if the volume is NFS LDAP enabled or not. Inherited from storage pool.
  /// [location] Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  /// [mountOptions] Reports mount instructions for this volume.
  /// [multipleEndpoints] Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// [name] The name of the volume. Needs to be unique per location.
  /// [network] VPC network name with format: `projects/{{project}}/global/networks/{{network}}`. Inherited from storage pool.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocols] The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// [psaRange] Name of the Private Service Access allocated range. Inherited from storage pool.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [replicaZone] Specifies the replica zone for regional volume.
  /// [restoreParameters] Used to create this volume from a snapshot (= cloning) or an backup.
  /// [restrictedActions] List of actions that are restricted on this volume.
  /// [securityStyle] Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// [serviceLevel] Service level of the volume. Inherited from storage pool. Supported values are : PREMIUM, EXTREME, STANDARD, FLEX.
  /// [shareName] Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  /// [smbSettings] Settings for volumes with SMB access.
  /// [snapshotDirectory] If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  /// [snapshotPolicy] Snapshot policy defines the schedule for automatic snapshot creation.
  /// [state] State of the volume.
  /// [stateDetails] State details of the volume.
  /// [storagePool] Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  /// [throughputMibps] Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  /// [tieringPolicy] Tiering policy for the volume.
  /// [unixPermissions] Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  /// [usedGib] Used capacity of the volume (in GiB). This is computed periodically and it does not represent the realtime usage.
  /// [zone] Specifies the active zone for regional volume.
  VolumeState({
    this.activeDirectory,
    this.backupConfig,
    this.blockDevices,
    this.cacheParameters,
    this.capacityGib,
    this.coldTierSizeGib,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.encryptionType,
    this.exportPolicy,
    this.hasReplication,
    this.hotTierSizeUsedGib,
    this.hybridReplicationParameters,
    this.kerberosEnabled,
    this.kmsConfig,
    this.labels,
    this.largeCapacity,
    this.ldapEnabled,
    this.location,
    this.mountOptions,
    this.multipleEndpoints,
    this.name,
    this.network,
    this.project,
    this.protocols,
    this.psaRange,
    this.pulumiLabels,
    this.replicaZone,
    this.restoreParameters,
    this.restrictedActions,
    this.securityStyle,
    this.serviceLevel,
    this.shareName,
    this.smbSettings,
    this.snapshotDirectory,
    this.snapshotPolicy,
    this.state,
    this.stateDetails,
    this.storagePool,
    this.throughputMibps,
    this.tieringPolicy,
    this.unixPermissions,
    this.usedGib,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?activeDirectory,
      'backupConfig': ?pulumi.Input.mapOptionalInputValue<VolumeBackupConfig, Map<String, dynamic>>(backupConfig, (value) => value.toMap()),
      'blockDevices': ?pulumi.Input.mapOptionalInputValue<List<VolumeBlockDevice>, List<Map<String, dynamic>>>(blockDevices, (value) => pulumi.Input.encodeList<VolumeBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheParameters': ?pulumi.Input.mapOptionalInputValue<VolumeCacheParameters, Map<String, dynamic>>(cacheParameters, (value) => value.toMap()),
      'capacityGib': ?capacityGib,
      'coldTierSizeGib': ?coldTierSizeGib,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'encryptionType': ?encryptionType,
      'exportPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeExportPolicy, Map<String, dynamic>>(exportPolicy, (value) => value.toMap()),
      'hasReplication': ?hasReplication,
      'hotTierSizeUsedGib': ?hotTierSizeUsedGib,
      'hybridReplicationParameters': ?pulumi.Input.mapOptionalInputValue<VolumeHybridReplicationParameters, Map<String, dynamic>>(hybridReplicationParameters, (value) => value.toMap()),
      'kerberosEnabled': ?kerberosEnabled,
      'kmsConfig': ?kmsConfig,
      'labels': ?labels,
      'largeCapacity': ?largeCapacity,
      'ldapEnabled': ?ldapEnabled,
      'location': ?location,
      'mountOptions': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountOption>, List<Map<String, dynamic>>>(mountOptions, (value) => pulumi.Input.encodeList<VolumeMountOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multipleEndpoints': ?multipleEndpoints,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'protocols': ?protocols,
      'psaRange': ?psaRange,
      'pulumiLabels': ?pulumiLabels,
      'replicaZone': ?replicaZone,
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<VolumeRestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'restrictedActions': ?restrictedActions,
      'securityStyle': ?securityStyle,
      'serviceLevel': ?serviceLevel,
      'shareName': ?shareName,
      'smbSettings': ?smbSettings,
      'snapshotDirectory': ?snapshotDirectory,
      'snapshotPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPolicy, Map<String, dynamic>>(snapshotPolicy, (value) => value.toMap()),
      'state': ?state,
      'stateDetails': ?stateDetails,
      'storagePool': ?storagePool,
      'throughputMibps': ?throughputMibps,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<VolumeTieringPolicy, Map<String, dynamic>>(tieringPolicy, (value) => value.toMap()),
      'unixPermissions': ?unixPermissions,
      'usedGib': ?usedGib,
      'zone': ?zone,
    };
  }

  factory VolumeState.fromMap(Map<String, dynamic> map) {
    return VolumeState(
      activeDirectory: map['activeDirectory'] == null ? null : (map['activeDirectory']! as String).input(),
      backupConfig: map['backupConfig'] == null ? null : (VolumeBackupConfig.fromMap((map['backupConfig']! as Map).cast<String, dynamic>())).input(),
      blockDevices: map['blockDevices'] == null ? null : (pulumi.Input.decodeList<VolumeBlockDevice>(map['blockDevices']!, (value) => VolumeBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cacheParameters: map['cacheParameters'] == null ? null : (VolumeCacheParameters.fromMap((map['cacheParameters']! as Map).cast<String, dynamic>())).input(),
      capacityGib: map['capacityGib'] == null ? null : (map['capacityGib']! as String).input(),
      coldTierSizeGib: map['coldTierSizeGib'] == null ? null : (map['coldTierSizeGib']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType']! as String).input(),
      exportPolicy: map['exportPolicy'] == null ? null : (VolumeExportPolicy.fromMap((map['exportPolicy']! as Map).cast<String, dynamic>())).input(),
      hasReplication: map['hasReplication'] == null ? null : (map['hasReplication']! as bool).input(),
      hotTierSizeUsedGib: map['hotTierSizeUsedGib'] == null ? null : (map['hotTierSizeUsedGib']! as String).input(),
      hybridReplicationParameters: map['hybridReplicationParameters'] == null ? null : (VolumeHybridReplicationParameters.fromMap((map['hybridReplicationParameters']! as Map).cast<String, dynamic>())).input(),
      kerberosEnabled: map['kerberosEnabled'] == null ? null : (map['kerberosEnabled']! as bool).input(),
      kmsConfig: map['kmsConfig'] == null ? null : (map['kmsConfig']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      largeCapacity: map['largeCapacity'] == null ? null : (map['largeCapacity']! as bool).input(),
      ldapEnabled: map['ldapEnabled'] == null ? null : (map['ldapEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mountOptions: map['mountOptions'] == null ? null : (pulumi.Input.decodeList<VolumeMountOption>(map['mountOptions']!, (value) => VolumeMountOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      multipleEndpoints: map['multipleEndpoints'] == null ? null : (map['multipleEndpoints']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols']! as List).cast<String>()).input(),
      psaRange: map['psaRange'] == null ? null : (map['psaRange']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      replicaZone: map['replicaZone'] == null ? null : (map['replicaZone']! as String).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (VolumeRestoreParameters.fromMap((map['restoreParameters']! as Map).cast<String, dynamic>())).input(),
      restrictedActions: map['restrictedActions'] == null ? null : ((map['restrictedActions']! as List).cast<String>()).input(),
      securityStyle: map['securityStyle'] == null ? null : (map['securityStyle']! as String).input(),
      serviceLevel: map['serviceLevel'] == null ? null : (map['serviceLevel']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
      smbSettings: map['smbSettings'] == null ? null : ((map['smbSettings']! as List).cast<String>()).input(),
      snapshotDirectory: map['snapshotDirectory'] == null ? null : (map['snapshotDirectory']! as bool).input(),
      snapshotPolicy: map['snapshotPolicy'] == null ? null : (VolumeSnapshotPolicy.fromMap((map['snapshotPolicy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      stateDetails: map['stateDetails'] == null ? null : (map['stateDetails']! as String).input(),
      storagePool: map['storagePool'] == null ? null : (map['storagePool']! as String).input(),
      throughputMibps: map['throughputMibps'] == null ? null : (map['throughputMibps']! as double).input(),
      tieringPolicy: map['tieringPolicy'] == null ? null : (VolumeTieringPolicy.fromMap((map['tieringPolicy']! as Map).cast<String, dynamic>())).input(),
      unixPermissions: map['unixPermissions'] == null ? null : (map['unixPermissions']! as String).input(),
      usedGib: map['usedGib'] == null ? null : (map['usedGib']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

