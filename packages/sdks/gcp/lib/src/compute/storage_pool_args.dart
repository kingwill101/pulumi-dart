// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_storage_pool_storage_pool_args_doc}
/// The set of arguments for StoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_storage_pool_storage_pool_args_doc}
class StoragePoolArgs {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final pulumi.Input<String>? capacityProvisioningType;
  final pulumi.Input<bool>? deletionProtection;
  /// A description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final pulumi.Input<String>? performanceProvisioningType;
  /// Size, in GiB, of the storage pool. For more information about the size limits,
  /// see https://cloud.google.com/compute/docs/disks/storage-pools.
  final pulumi.Input<String> poolProvisionedCapacityGb;
  /// Provisioned IOPS of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced`.
  final pulumi.Input<String>? poolProvisionedIops;
  /// Provisioned throughput, in MB/s, of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced` or `hyperdisk-throughput`.
  final pulumi.Input<String> poolProvisionedThroughput;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Type of the storage pool. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced`
  /// * `hyperdisk-throughput`
  final pulumi.Input<String> storagePoolType;
  /// A reference to the zone where the storage pool resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [StoragePoolArgs].
  /// [capacityProvisioningType] Provisioning type of the byte capacity of the pool.
  /// [deletionProtection] Optional.
  /// [description] A description of this resource. Provide this property when you create the resource.
  /// [labels] Labels to apply to this storage pool. These can be later modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [performanceProvisioningType] Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// [poolProvisionedCapacityGb] Size, in GiB, of the storage pool. For more information about the size limits,
  /// [poolProvisionedIops] Provisioned IOPS of the storage pool.
  /// [poolProvisionedThroughput] Provisioned throughput, in MB/s, of the storage pool.
  /// [project] The ID of the project in which the resource belongs.
  /// [storagePoolType] Type of the storage pool. For example, the
  /// [zone] A reference to the zone where the storage pool resides.
  StoragePoolArgs({
    this.capacityProvisioningType,
    this.deletionProtection,
    this.description,
    this.labels,
    this.name,
    this.performanceProvisioningType,
    required this.poolProvisionedCapacityGb,
    this.poolProvisionedIops,
    required this.poolProvisionedThroughput,
    this.project,
    required this.storagePoolType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProvisioningType': ?capacityProvisioningType,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'performanceProvisioningType': ?performanceProvisioningType,
      'poolProvisionedCapacityGb': poolProvisionedCapacityGb,
      'poolProvisionedIops': ?poolProvisionedIops,
      'poolProvisionedThroughput': poolProvisionedThroughput,
      'project': ?project,
      'storagePoolType': storagePoolType,
      'zone': ?zone,
    };
  }

  factory StoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs(
      capacityProvisioningType: map['capacityProvisioningType'] == null ? null : (map['capacityProvisioningType'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      performanceProvisioningType: map['performanceProvisioningType'] == null ? null : (map['performanceProvisioningType'] as String).input(),
      poolProvisionedCapacityGb: (map['poolProvisionedCapacityGb'] as String).input(),
      poolProvisionedIops: map['poolProvisionedIops'] == null ? null : (map['poolProvisionedIops'] as String).input(),
      poolProvisionedThroughput: (map['poolProvisionedThroughput'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      storagePoolType: (map['storagePoolType'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

