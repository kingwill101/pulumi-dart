// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class SubsettingResponseComputeBeta {
  final pulumi.Input<String> policy;
  /// The number of backends per backend group assigned to each proxy instance or each service mesh client. An input parameter to the `CONSISTENT_HASH_SUBSETTING` algorithm. Can only be set if `policy` is set to `CONSISTENT_HASH_SUBSETTING`. Can only be set if load balancing scheme is `INTERNAL_MANAGED` or `INTERNAL_SELF_MANAGED`. `subset_size` is optional for Internal HTTP(S) load balancing and required for Traffic Director. If you do not provide this value, Cloud Load Balancing will calculate it dynamically to optimize the number of proxies/clients visible to each backend and vice versa. Must be greater than 0. If `subset_size` is larger than the number of backends/endpoints, then subsetting is disabled.
  final pulumi.Input<int> subsetSize;

  /// Creates a new [SubsettingResponseComputeBeta].
  /// [policy] Required.
  /// [subsetSize] The number of backends per backend group assigned to each proxy instance or each service mesh client. An input parameter to the `CONSISTENT_HASH_SUBSETTING` algorithm. Can only be set if `policy` is set to `CONSISTENT_HASH_SUBSETTING`. Can only be set if load balancing scheme is `INTERNAL_MANAGED` or `INTERNAL_SELF_MANAGED`. `subset_size` is optional for Internal HTTP(S) load balancing and required for Traffic Director. If you do not provide this value, Cloud Load Balancing will calculate it dynamically to optimize the number of proxies/clients visible to each backend and vice versa. Must be greater than 0. If `subset_size` is larger than the number of backends/endpoints, then subsetting is disabled.
  const SubsettingResponseComputeBeta({
    required this.policy,
    required this.subsetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'subsetSize': subsetSize,
    };
  }

  factory SubsettingResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SubsettingResponseComputeBeta(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      subsetSize: pulumi.Input.fromValue(map['subsetSize'] as int),
    );
  }
}
