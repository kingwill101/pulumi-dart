// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_capacity_provisioning_type.dart';
import 'storage_pool_performance_provisioning_type.dart';

/// {@template pulumi_compute_alpha_storage_pool_args_doc}
/// The set of arguments for StoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_storage_pool_args_doc}
class StoragePoolArgs {
  /// Provisioning type of the byte capacity of the pool.
  final pulumi.Input<StoragePoolCapacityProvisioningType>? capacityProvisioningType;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  final pulumi.Input<StoragePoolPerformanceProvisioningType>? performanceProvisioningType;
  final pulumi.Input<String>? project;
  /// Provsioned IOPS of the storage pool.
  final pulumi.Input<String>? provisionedIops;
  /// Provisioned throughput of the storage pool. Only relevant if the storage pool type is hyperdisk-balanced or hyperdisk-throughput.
  final pulumi.Input<String>? provisionedThroughput;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Size, in GiB, of the storage pool.
  final pulumi.Input<String>? sizeGb;
  /// Type of the storage pool.
  final pulumi.Input<String>? storagePoolType;
  final pulumi.Input<String>? zone;

  /// Creates a new [StoragePoolArgs].
  /// [capacityProvisioningType] Provisioning type of the byte capacity of the pool.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [labels] Labels to apply to this storage pool. These can be later modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [performanceProvisioningType] Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// [project] Optional.
  /// [provisionedIops] Provsioned IOPS of the storage pool.
  /// [provisionedThroughput] Provisioned throughput of the storage pool. Only relevant if the storage pool type is hyperdisk-balanced or hyperdisk-throughput.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sizeGb] Size, in GiB, of the storage pool.
  /// [storagePoolType] Type of the storage pool.
  /// [zone] Optional.
  const StoragePoolArgs({
    this.capacityProvisioningType,
    this.description,
    this.labels,
    this.name,
    this.performanceProvisioningType,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.requestId,
    this.sizeGb,
    this.storagePoolType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProvisioningType': ?pulumi.Input.mapOptionalInputValue<StoragePoolCapacityProvisioningType, String>(capacityProvisioningType, (value) => value.wireValue),
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'performanceProvisioningType': ?pulumi.Input.mapOptionalInputValue<StoragePoolPerformanceProvisioningType, String>(performanceProvisioningType, (value) => value.wireValue),
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'requestId': ?requestId,
      'sizeGb': ?sizeGb,
      'storagePoolType': ?storagePoolType,
      'zone': ?zone,
    };
  }

  factory StoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs(
      capacityProvisioningType: (() { final guardedValue = map['capacityProvisioningType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoragePoolCapacityProvisioningType.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceProvisioningType: (() { final guardedValue = map['performanceProvisioningType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoragePoolPerformanceProvisioningType.fromValue(guardedValue as String)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePoolType: (() { final guardedValue = map['storagePoolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
