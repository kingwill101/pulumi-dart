// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partition_type_status.dart';
import 'shareable_summary_status.dart';

/// PoolStatus contains status information for a single resource pool.
class PoolStatus {
  /// AllocatedDevices is the number of devices currently allocated to claims. A value of 0 means no devices are allocated. May be unset when validationError is set.
  final pulumi.Input<int?>? allocatedDevices;
  /// AvailableDevices is the number of devices available for allocation. This equals TotalDevices - AllocatedDevices - UnavailableDevices. A value of 0 means no devices are currently available. May be unset when validationError is set.
  final pulumi.Input<int?>? availableDevices;
  /// Driver is the DRA driver name for this pool. Must be a DNS subdomain (e.g., "gpu.example.com").
  final pulumi.Input<String> driver;
  /// Generation is the pool generation observed across all ResourceSlices in this pool. Only the latest generation is reported. During a generation rollout, if not all slices at the latest generation have been published, the pool is included with a validationError and device counts unset.
  final pulumi.Input<int> generation;
  /// NodeName is the node this pool is associated with. When omitted, the pool is not associated with a specific node. Must be a valid DNS subdomain name (RFC1123).
  final pulumi.Input<String?>? nodeName;
  /// PartitionSummary reports allocatability per (attribute, partition type) for a partitionable pool that publishes SharedCounters. Each entry names the grouping attribute it was resolved from: the PartitionTypeAttribute declared by a device's own slice, or for devices whose slice declares none, the default named in the request. A pool that mixes partitions declared under different attributes reports each independently. When no slice declares an attribute and the request names no default, the pool reports no partition summary.
  final pulumi.Input<List<PartitionTypeStatus>?>? partitionSummary;
  /// PoolName is the name of the pool. Must be a valid resource pool name (DNS subdomains separated by "/").
  final pulumi.Input<String> poolName;
  /// ResourceSliceCount is the number of ResourceSlices that make up this pool. May be unset when validationError is set.
  final pulumi.Input<int?>? resourceSliceCount;
  /// ShareableSummary reports aggregate capacity for a pool that contains devices with AllowMultipleAllocations. It is populated only when at least one device in the pool is shareable.
  final pulumi.Input<ShareableSummaryStatus?>? shareableSummary;
  /// TotalDevices is the total number of devices in the pool across all slices. A value of 0 means the pool has no devices. May be unset when validationError is set.
  final pulumi.Input<int?>? totalDevices;
  /// UnavailableDevices is the number of devices that are not available due to taints or other conditions, but are not allocated. A value of 0 means all unallocated devices are available. May be unset when validationError is set.
  final pulumi.Input<int?>? unavailableDevices;
  /// ValidationError is set when the pool's data could not be fully validated (e.g., incomplete slice publication). When set, device count fields and ResourceSliceCount may be unset.
  final pulumi.Input<String?>? validationError;

  /// Creates a new [PoolStatus].
  /// [allocatedDevices] AllocatedDevices is the number of devices currently allocated to claims. A value of 0 means no devices are allocated. May be unset when validationError is set.
  /// [availableDevices] AvailableDevices is the number of devices available for allocation. This equals TotalDevices - AllocatedDevices - UnavailableDevices. A value of 0 means no devices are currently available. May be unset when validationError is set.
  /// [driver] Driver is the DRA driver name for this pool. Must be a DNS subdomain (e.g., "gpu.example.com").
  /// [generation] Generation is the pool generation observed across all ResourceSlices in this pool. Only the latest generation is reported. During a generation rollout, if not all slices at the latest generation have been published, the pool is included with a validationError and device counts unset.
  /// [nodeName] NodeName is the node this pool is associated with. When omitted, the pool is not associated with a specific node. Must be a valid DNS subdomain name (RFC1123).
  /// [partitionSummary] PartitionSummary reports allocatability per (attribute, partition type) for a partitionable pool that publishes SharedCounters. Each entry names the grouping attribute it was resolved from: the PartitionTypeAttribute declared by a device's own slice, or for devices whose slice declares none, the default named in the request. A pool that mixes partitions declared under different attributes reports each independently. When no slice declares an attribute and the request names no default, the pool reports no partition summary.
  /// [poolName] PoolName is the name of the pool. Must be a valid resource pool name (DNS subdomains separated by "/").
  /// [resourceSliceCount] ResourceSliceCount is the number of ResourceSlices that make up this pool. May be unset when validationError is set.
  /// [shareableSummary] ShareableSummary reports aggregate capacity for a pool that contains devices with AllowMultipleAllocations. It is populated only when at least one device in the pool is shareable.
  /// [totalDevices] TotalDevices is the total number of devices in the pool across all slices. A value of 0 means the pool has no devices. May be unset when validationError is set.
  /// [unavailableDevices] UnavailableDevices is the number of devices that are not available due to taints or other conditions, but are not allocated. A value of 0 means all unallocated devices are available. May be unset when validationError is set.
  /// [validationError] ValidationError is set when the pool's data could not be fully validated (e.g., incomplete slice publication). When set, device count fields and ResourceSliceCount may be unset.
  const PoolStatus({
    this.allocatedDevices,
    this.availableDevices,
    required this.driver,
    required this.generation,
    this.nodeName,
    this.partitionSummary,
    required this.poolName,
    this.resourceSliceCount,
    this.shareableSummary,
    this.totalDevices,
    this.unavailableDevices,
    this.validationError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedDevices': ?allocatedDevices,
      'availableDevices': ?availableDevices,
      'driver': driver,
      'generation': generation,
      'nodeName': ?nodeName,
      'partitionSummary': ?pulumi.Input.mapOptionalInputValue<List<PartitionTypeStatus>, List<Map<String, dynamic>>>(partitionSummary, (value) => pulumi.Input.encodeList<PartitionTypeStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolName': poolName,
      'resourceSliceCount': ?resourceSliceCount,
      'shareableSummary': ?pulumi.Input.mapOptionalInputValue<ShareableSummaryStatus, Map<String, dynamic>>(shareableSummary, (value) => value.toMap()),
      'totalDevices': ?totalDevices,
      'unavailableDevices': ?unavailableDevices,
      'validationError': ?validationError,
    };
  }

  factory PoolStatus.fromMap(Map<String, dynamic> map) {
    return PoolStatus(
      allocatedDevices: (() { final guardedValue = map['allocatedDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      availableDevices: (() { final guardedValue = map['availableDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      driver: pulumi.Input.fromValue(map['driver'] as String),
      generation: pulumi.Input.fromValue((map['generation'] as num).toInt()),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionSummary: (() { final guardedValue = map['partitionSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PartitionTypeStatus>(guardedValue, (value) => PartitionTypeStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceSliceCount: (() { final guardedValue = map['resourceSliceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shareableSummary: (() { final guardedValue = map['shareableSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShareableSummaryStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalDevices: (() { final guardedValue = map['totalDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      unavailableDevices: (() { final guardedValue = map['unavailableDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      validationError: (() { final guardedValue = map['validationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
