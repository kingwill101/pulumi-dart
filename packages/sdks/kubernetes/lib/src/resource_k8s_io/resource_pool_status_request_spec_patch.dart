// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourcePoolStatusRequestSpec defines the filters for the pool status request.
class ResourcePoolStatusRequestSpecPatch {
  /// DefaultPartitionTypeAttribute optionally names a device attribute (by its fully qualified name, e.g. "gpu.example.com/profile") to use as the default grouping attribute for partitionable devices whose slice has not declared one themselves.
  ///
  /// A slice's own PartitionTypeAttribute always takes precedence. This default applies only to devices whose slice does not declare one, so that a request can still get an accurate partitionSummary from a driver that has not been updated to declare it. When neither the slice nor this default names an attribute, a partitionable pool reports no partitionSummary.
  ///
  /// Must include the domain qualifier.
  final pulumi.Input<String?>? defaultPartitionTypeAttribute;
  /// Driver specifies the DRA driver name to filter pools. Only pools from ResourceSlices with this driver will be included. Must be a DNS subdomain (e.g., "gpu.example.com").
  final pulumi.Input<String?>? driver;
  /// Limit optionally specifies the maximum number of pools to return in the status. If more pools match the filter criteria, the response will be truncated (i.e., len(status.pools) &lt; status.poolCount).
  ///
  /// Default: 100 Minimum: 1 Maximum: 1000
  final pulumi.Input<int?>? limit;
  /// PoolName optionally filters to a specific pool name. If not specified, all pools from the specified driver are included. When specified, must be a non-empty valid resource pool name (DNS subdomains separated by "/").
  final pulumi.Input<String?>? poolName;

  /// Creates a new [ResourcePoolStatusRequestSpecPatch].
  /// [defaultPartitionTypeAttribute] DefaultPartitionTypeAttribute optionally names a device attribute (by its fully qualified name, e.g. "gpu.example.com/profile") to use as the default grouping attribute for partitionable devices whose slice has not declared one themselves.
  /// [driver] Driver specifies the DRA driver name to filter pools. Only pools from ResourceSlices with this driver will be included. Must be a DNS subdomain (e.g., "gpu.example.com").
  /// [limit] Limit optionally specifies the maximum number of pools to return in the status. If more pools match the filter criteria, the response will be truncated (i.e., len(status.pools) &lt; status.poolCount).
  /// [poolName] PoolName optionally filters to a specific pool name. If not specified, all pools from the specified driver are included. When specified, must be a non-empty valid resource pool name (DNS subdomains separated by "/").
  const ResourcePoolStatusRequestSpecPatch({
    this.defaultPartitionTypeAttribute,
    this.driver,
    this.limit,
    this.poolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPartitionTypeAttribute': ?defaultPartitionTypeAttribute,
      'driver': ?driver,
      'limit': ?limit,
      'poolName': ?poolName,
    };
  }

  factory ResourcePoolStatusRequestSpecPatch.fromMap(Map<String, dynamic> map) {
    return ResourcePoolStatusRequestSpecPatch(
      defaultPartitionTypeAttribute: (() { final guardedValue = map['defaultPartitionTypeAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
