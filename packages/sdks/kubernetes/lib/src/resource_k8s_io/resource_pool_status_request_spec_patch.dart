// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourcePoolStatusRequestSpec defines the filters for the pool status request.
class ResourcePoolStatusRequestSpecPatch {
  /// Driver specifies the DRA driver name to filter pools. Only pools from ResourceSlices with this driver will be included. Must be a DNS subdomain (e.g., "gpu.example.com").
  final pulumi.Input<String>? driver;
  /// Limit optionally specifies the maximum number of pools to return in the status. If more pools match the filter criteria, the response will be truncated (i.e., len(status.pools) &lt; status.poolCount).
  ///
  /// Default: 100 Minimum: 1 Maximum: 1000
  final pulumi.Input<int>? limit;
  /// PoolName optionally filters to a specific pool name. If not specified, all pools from the specified driver are included. When specified, must be a non-empty valid resource pool name (DNS subdomains separated by "/").
  final pulumi.Input<String>? poolName;

  /// Creates a new [ResourcePoolStatusRequestSpecPatch].
  /// [driver] Driver specifies the DRA driver name to filter pools. Only pools from ResourceSlices with this driver will be included. Must be a DNS subdomain (e.g., "gpu.example.com").
  /// [limit] Limit optionally specifies the maximum number of pools to return in the status. If more pools match the filter criteria, the response will be truncated (i.e., len(status.pools) &lt; status.poolCount).
  /// [poolName] PoolName optionally filters to a specific pool name. If not specified, all pools from the specified driver are included. When specified, must be a non-empty valid resource pool name (DNS subdomains separated by "/").
  const ResourcePoolStatusRequestSpecPatch({
    this.driver,
    this.limit,
    this.poolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'limit': ?limit,
      'poolName': ?poolName,
    };
  }

  factory ResourcePoolStatusRequestSpecPatch.fromMap(Map<String, dynamic> map) {
    return ResourcePoolStatusRequestSpecPatch(
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
