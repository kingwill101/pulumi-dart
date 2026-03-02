// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StoragePool resources.
class StoragePoolState {
  /// Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final pulumi.Input<String>? activeDirectory;
  /// Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// Auto-tiering can be enabled after storage pool creation but it can't be disabled once enabled.
  final pulumi.Input<bool>? allowAutoTiering;
  /// Available throughput of the storage pool (in MiB/s).
  final pulumi.Input<double>? availableThroughputMibps;
  /// Capacity of the storage pool (in GiB).
  final pulumi.Input<String>? capacityGib;
  /// Total cold tier data rounded down to the nearest GiB used by the storage pool.
  final pulumi.Input<String>? coldTierSizeUsedGib;
  /// Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  final pulumi.Input<bool>? customPerformanceEnabled;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// The increment will kick in only if the new size after increment is still less than or equal to storage pool size.
  final pulumi.Input<bool>? enableHotTierAutoResize;
  /// Reports if volumes in the pool are encrypted using a Google-managed encryption key or CMEK.
  final pulumi.Input<String>? encryptionType;
  /// Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// It should be less than the minimum storage pool size and cannot be more than the current storage pool size. It cannot be decreased once set.
  final pulumi.Input<String>? hotTierSizeGib;
  /// Total hot tier data rounded down to the nearest GiB used by the storage pool.
  final pulumi.Input<String>? hotTierSizeUsedGib;
  /// Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final pulumi.Input<String>? kmsConfig;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1.
  final pulumi.Input<bool>? ldapEnabled;
  /// Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  final pulumi.Input<String>? location;
  /// The resource name of the storage pool. Needs to be unique per location/region.
  final pulumi.Input<String>? name;
  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// QoS (Quality of Service) type of the storage pool.
  /// Possible values are: AUTO, MANUAL.
  /// Possible values are: `QOS_TYPE_UNSPECIFIED`, `AUTO`, `MANUAL`.
  final pulumi.Input<String>? qosType;
  /// Specifies the replica zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  final pulumi.Input<String>? replicaZone;
  /// Service level of the storage pool.
  /// Possible values are: `PREMIUM`, `EXTREME`, `STANDARD`, `FLEX`.
  final pulumi.Input<String>? serviceLevel;
  /// Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  final pulumi.Input<String>? totalIops;
  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final pulumi.Input<String>? totalThroughputMibps;
  /// Type of the storage pool.
  /// This field is used to control whether the pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
  /// If not specified during creation, it defaults to FILE.
  /// Possible values are: `STORAGE_POOL_TYPE_UNSPECIFIED`, `FILE`, `UNIFIED`.
  final pulumi.Input<String>? type;
  /// Size allocated to volumes in the storage pool (in GiB).
  final pulumi.Input<String>? volumeCapacityGib;
  /// Number of volume in the storage pool.
  final pulumi.Input<int>? volumeCount;
  /// Specifies the active zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  /// If you want to create a zonal Flex pool, specify a zone name for `location` and omit `zone`.
  final pulumi.Input<String>? zone;

  /// Creates a new [StoragePoolState].
  /// [activeDirectory] Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// [allowAutoTiering] Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// [availableThroughputMibps] Available throughput of the storage pool (in MiB/s).
  /// [capacityGib] Capacity of the storage pool (in GiB).
  /// [coldTierSizeUsedGib] Total cold tier data rounded down to the nearest GiB used by the storage pool.
  /// [customPerformanceEnabled] Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableHotTierAutoResize] Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// [encryptionType] Reports if volumes in the pool are encrypted using a Google-managed encryption key or CMEK.
  /// [hotTierSizeGib] Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// [hotTierSizeUsedGib] Total hot tier data rounded down to the nearest GiB used by the storage pool.
  /// [kmsConfig] Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [ldapEnabled] When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// [location] Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  /// [name] The resource name of the storage pool. Needs to be unique per location/region.
  /// [network] VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [qosType] QoS (Quality of Service) type of the storage pool.
  /// [replicaZone] Specifies the replica zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [serviceLevel] Service level of the storage pool.
  /// [totalIops] Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  /// [totalThroughputMibps] Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  /// [type] Type of the storage pool.
  /// [volumeCapacityGib] Size allocated to volumes in the storage pool (in GiB).
  /// [volumeCount] Number of volume in the storage pool.
  /// [zone] Specifies the active zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  StoragePoolState({
    this.activeDirectory,
    this.allowAutoTiering,
    this.availableThroughputMibps,
    this.capacityGib,
    this.coldTierSizeUsedGib,
    this.customPerformanceEnabled,
    this.description,
    this.effectiveLabels,
    this.enableHotTierAutoResize,
    this.encryptionType,
    this.hotTierSizeGib,
    this.hotTierSizeUsedGib,
    this.kmsConfig,
    this.labels,
    this.ldapEnabled,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.qosType,
    this.replicaZone,
    this.serviceLevel,
    this.totalIops,
    this.totalThroughputMibps,
    this.type,
    this.volumeCapacityGib,
    this.volumeCount,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?activeDirectory,
      'allowAutoTiering': ?allowAutoTiering,
      'availableThroughputMibps': ?availableThroughputMibps,
      'capacityGib': ?capacityGib,
      'coldTierSizeUsedGib': ?coldTierSizeUsedGib,
      'customPerformanceEnabled': ?customPerformanceEnabled,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'enableHotTierAutoResize': ?enableHotTierAutoResize,
      'encryptionType': ?encryptionType,
      'hotTierSizeGib': ?hotTierSizeGib,
      'hotTierSizeUsedGib': ?hotTierSizeUsedGib,
      'kmsConfig': ?kmsConfig,
      'labels': ?labels,
      'ldapEnabled': ?ldapEnabled,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'qosType': ?qosType,
      'replicaZone': ?replicaZone,
      'serviceLevel': ?serviceLevel,
      'totalIops': ?totalIops,
      'totalThroughputMibps': ?totalThroughputMibps,
      'type': ?type,
      'volumeCapacityGib': ?volumeCapacityGib,
      'volumeCount': ?volumeCount,
      'zone': ?zone,
    };
  }

  factory StoragePoolState.fromMap(Map<String, dynamic> map) {
    return StoragePoolState(
      activeDirectory: map['activeDirectory'] == null ? null : (map['activeDirectory']! as String).input(),
      allowAutoTiering: map['allowAutoTiering'] == null ? null : (map['allowAutoTiering']! as bool).input(),
      availableThroughputMibps: map['availableThroughputMibps'] == null ? null : (map['availableThroughputMibps']! as double).input(),
      capacityGib: map['capacityGib'] == null ? null : (map['capacityGib']! as String).input(),
      coldTierSizeUsedGib: map['coldTierSizeUsedGib'] == null ? null : (map['coldTierSizeUsedGib']! as String).input(),
      customPerformanceEnabled: map['customPerformanceEnabled'] == null ? null : (map['customPerformanceEnabled']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      enableHotTierAutoResize: map['enableHotTierAutoResize'] == null ? null : (map['enableHotTierAutoResize']! as bool).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType']! as String).input(),
      hotTierSizeGib: map['hotTierSizeGib'] == null ? null : (map['hotTierSizeGib']! as String).input(),
      hotTierSizeUsedGib: map['hotTierSizeUsedGib'] == null ? null : (map['hotTierSizeUsedGib']! as String).input(),
      kmsConfig: map['kmsConfig'] == null ? null : (map['kmsConfig']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      ldapEnabled: map['ldapEnabled'] == null ? null : (map['ldapEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      qosType: map['qosType'] == null ? null : (map['qosType']! as String).input(),
      replicaZone: map['replicaZone'] == null ? null : (map['replicaZone']! as String).input(),
      serviceLevel: map['serviceLevel'] == null ? null : (map['serviceLevel']! as String).input(),
      totalIops: map['totalIops'] == null ? null : (map['totalIops']! as String).input(),
      totalThroughputMibps: map['totalThroughputMibps'] == null ? null : (map['totalThroughputMibps']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      volumeCapacityGib: map['volumeCapacityGib'] == null ? null : (map['volumeCapacityGib']! as String).input(),
      volumeCount: map['volumeCount'] == null ? null : (map['volumeCount']! as int).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

