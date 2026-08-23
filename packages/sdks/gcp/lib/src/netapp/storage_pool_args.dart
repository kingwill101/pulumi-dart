// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_storage_pool_storage_pool_args_doc}
/// The set of arguments for StoragePool.
/// {@endtemplate}
/// {@macro pulumi_netapp_storage_pool_storage_pool_args_doc}
class StoragePoolArgs {
  /// Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final pulumi.Input<String>? activeDirectory;
  /// Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// Auto-tiering can be enabled after storage pool creation but it can't be disabled once enabled.
  final pulumi.Input<bool>? allowAutoTiering;
  /// Capacity of the storage pool (in GiB).
  final pulumi.Input<String> capacityGib;
  /// Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  final pulumi.Input<bool>? customPerformanceEnabled;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// The increment will kick in only if the new size after increment is still less than or equal to storage pool size.
  final pulumi.Input<bool>? enableHotTierAutoResize;
  /// Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// It should be less than the minimum storage pool size and cannot be more than the current storage pool size. It cannot be decreased once set.
  final pulumi.Input<String>? hotTierSizeGib;
  /// Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final pulumi.Input<String>? kmsConfig;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1.
  final pulumi.Input<bool>? ldapEnabled;
  /// Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  final pulumi.Input<String> location;
  /// Mode of the storage pool.
  /// The operational mode of the storage pool. ONTAP mode enables operations
  /// via ONTAP Mode APIs, while DEFAULT mode enables operations via NetApp Volumes APIs.
  /// If not specified during creation, the mode defaults to DEFAULT.
  /// Possible values are: `MODE_UNSPECIFIED`, `DEFAULT`, `ONTAP`.
  final pulumi.Input<String>? mode;
  /// The resource name of the storage pool. Needs to be unique per location/region.
  final pulumi.Input<String>? name;
  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// QoS (Quality of Service) type of the storage pool.
  /// Possible values are: AUTO, MANUAL.
  /// Possible values are: `QOS_TYPE_UNSPECIFIED`, `AUTO`, `MANUAL`.
  final pulumi.Input<String>? qosType;
  /// Specifies the replica zone for regional Flex pools. `zone` and `replicaZone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  final pulumi.Input<String>? replicaZone;
  /// (Optional, Beta, Deprecated)
  /// The effective scale tier of the storage pool. If `scaleTier` is not
  /// specified during creation, this defaults to `SCALE_TIER_STANDARD`.
  /// Possible values are: `SCALE_TIER_UNSPECIFIED`, `SCALE_TIER_STANDARD`, `SCALE_TIER_ENTERPRISE`.
  ///
  /// &gt; **Warning:** `scaleTier` is deprecated and will be removed in a future major release. Use `scaleType` instead.
  final pulumi.Input<String>? scaleTier;
  /// The scale type of the storage pool. Defaults to `SCALE_TYPE_DEFAULT` if not specified.
  /// Possible values are: `SCALE_TYPE_UNSPECIFIED`, `SCALE_TYPE_DEFAULT`, `SCALE_TYPE_SCALEOUT`.
  final pulumi.Input<String>? scaleType;
  /// Service level of the storage pool.
  /// Possible values are: `PREMIUM`, `EXTREME`, `STANDARD`, `FLEX`.
  final pulumi.Input<String> serviceLevel;
  /// Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  final pulumi.Input<String>? totalIops;
  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final pulumi.Input<String>? totalThroughputMibps;
  /// Type of the storage pool.
  /// This field is used to control whether the pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
  /// If not specified during creation, it defaults to FILE.
  /// Possible values are: `STORAGE_POOL_TYPE_UNSPECIFIED`, `FILE`, `UNIFIED`.
  final pulumi.Input<String>? type;
  /// Specifies the active zone for regional Flex pools. `zone` and `replicaZone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  /// If you want to create a zonal Flex pool, specify a zone name for `location` and omit `zone`.
  final pulumi.Input<String>? zone;

  /// Creates a new [StoragePoolArgs].
  /// [activeDirectory] Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// [allowAutoTiering] Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// [capacityGib] Capacity of the storage pool (in GiB).
  /// [customPerformanceEnabled] Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [enableHotTierAutoResize] Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// [hotTierSizeGib] Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// [kmsConfig] Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [ldapEnabled] When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// [location] Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  /// [mode] Mode of the storage pool.
  /// [name] The resource name of the storage pool. Needs to be unique per location/region.
  /// [network] VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  /// [project] The ID of the project in which the resource belongs.
  /// [qosType] QoS (Quality of Service) type of the storage pool.
  /// [replicaZone] Specifies the replica zone for regional Flex pools. `zone` and `replicaZone` values can be swapped to initiate a
  /// [scaleTier] (Optional, Beta, Deprecated)
  /// [scaleType] The scale type of the storage pool. Defaults to `SCALE_TYPE_DEFAULT` if not specified.
  /// [serviceLevel] Service level of the storage pool.
  /// [totalIops] Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  /// [totalThroughputMibps] Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  /// [type] Type of the storage pool.
  /// [zone] Specifies the active zone for regional Flex pools. `zone` and `replicaZone` values can be swapped to initiate a
  const StoragePoolArgs({
    this.activeDirectory,
    this.allowAutoTiering,
    required this.capacityGib,
    this.customPerformanceEnabled,
    this.deletionPolicy,
    this.description,
    this.enableHotTierAutoResize,
    this.hotTierSizeGib,
    this.kmsConfig,
    this.labels,
    this.ldapEnabled,
    required this.location,
    this.mode,
    this.name,
    required this.network,
    this.project,
    this.qosType,
    this.replicaZone,
    this.scaleTier,
    this.scaleType,
    required this.serviceLevel,
    this.totalIops,
    this.totalThroughputMibps,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?activeDirectory,
      'allowAutoTiering': ?allowAutoTiering,
      'capacityGib': capacityGib,
      'customPerformanceEnabled': ?customPerformanceEnabled,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enableHotTierAutoResize': ?enableHotTierAutoResize,
      'hotTierSizeGib': ?hotTierSizeGib,
      'kmsConfig': ?kmsConfig,
      'labels': ?labels,
      'ldapEnabled': ?ldapEnabled,
      'location': location,
      'mode': ?mode,
      'name': ?name,
      'network': network,
      'project': ?project,
      'qosType': ?qosType,
      'replicaZone': ?replicaZone,
      'scaleTier': ?scaleTier,
      'scaleType': ?scaleType,
      'serviceLevel': serviceLevel,
      'totalIops': ?totalIops,
      'totalThroughputMibps': ?totalThroughputMibps,
      'type': ?type,
      'zone': ?zone,
    };
  }

  factory StoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs(
      activeDirectory: (() { final guardedValue = map['activeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowAutoTiering: (() { final guardedValue = map['allowAutoTiering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacityGib: pulumi.Input.fromValue(map['capacityGib'] as String),
      customPerformanceEnabled: (() { final guardedValue = map['customPerformanceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableHotTierAutoResize: (() { final guardedValue = map['enableHotTierAutoResize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hotTierSizeGib: (() { final guardedValue = map['hotTierSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsConfig: (() { final guardedValue = map['kmsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ldapEnabled: (() { final guardedValue = map['ldapEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosType: (() { final guardedValue = map['qosType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaZone: (() { final guardedValue = map['replicaZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleTier: (() { final guardedValue = map['scaleTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLevel: pulumi.Input.fromValue(map['serviceLevel'] as String),
      totalIops: (() { final guardedValue = map['totalIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalThroughputMibps: (() { final guardedValue = map['totalThroughputMibps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
