// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_params.dart';

/// {@template pulumi_compute_storage_pool_storage_pool_args_doc}
/// The set of arguments for StoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_storage_pool_storage_pool_args_doc}
class StoragePoolArgs {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final pulumi.Input<String>? capacityProvisioningType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the StoragePool.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the StoragePool will fail.
  /// When the field is set to false, deleting the StoragePool is allowed.
  final pulumi.Input<bool>? deletionProtection;
  /// A description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<StoragePoolParams>? params;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the StoragePool.
  /// [description] A description of this resource. Provide this property when you create the resource.
  /// [labels] Labels to apply to this storage pool. These can be later modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [performanceProvisioningType] Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// [poolProvisionedCapacityGb] Size, in GiB, of the storage pool. For more information about the size limits,
  /// [poolProvisionedIops] Provisioned IOPS of the storage pool.
  /// [poolProvisionedThroughput] Provisioned throughput, in MB/s, of the storage pool.
  /// [project] The ID of the project in which the resource belongs.
  /// [storagePoolType] Type of the storage pool. For example, the
  /// [zone] A reference to the zone where the storage pool resides.
  const StoragePoolArgs({
    this.capacityProvisioningType,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.labels,
    this.name,
    this.params,
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
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<StoragePoolParams, Map<String, dynamic>>(params, (value) => value.toMap()),
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
      capacityProvisioningType: (() { final guardedValue = map['capacityProvisioningType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoragePoolParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      performanceProvisioningType: (() { final guardedValue = map['performanceProvisioningType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolProvisionedCapacityGb: pulumi.Input.fromValue(map['poolProvisionedCapacityGb'] as String),
      poolProvisionedIops: (() { final guardedValue = map['poolProvisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolProvisionedThroughput: pulumi.Input.fromValue(map['poolProvisionedThroughput'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePoolType: pulumi.Input.fromValue(map['storagePoolType'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
