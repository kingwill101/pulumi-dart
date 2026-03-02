// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subsetting_policy_compute_beta.dart';

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class SubsettingComputeBeta {
  final pulumi.Input<SubsettingPolicyComputeBeta>? policy;
  /// The number of backends per backend group assigned to each proxy instance or each service mesh client. An input parameter to the `CONSISTENT_HASH_SUBSETTING` algorithm. Can only be set if `policy` is set to `CONSISTENT_HASH_SUBSETTING`. Can only be set if load balancing scheme is `INTERNAL_MANAGED` or `INTERNAL_SELF_MANAGED`. `subset_size` is optional for Internal HTTP(S) load balancing and required for Traffic Director. If you do not provide this value, Cloud Load Balancing will calculate it dynamically to optimize the number of proxies/clients visible to each backend and vice versa. Must be greater than 0. If `subset_size` is larger than the number of backends/endpoints, then subsetting is disabled.
  final pulumi.Input<int>? subsetSize;

  /// Creates a new [SubsettingComputeBeta].
  /// [policy] Optional.
  /// [subsetSize] The number of backends per backend group assigned to each proxy instance or each service mesh client. An input parameter to the `CONSISTENT_HASH_SUBSETTING` algorithm. Can only be set if `policy` is set to `CONSISTENT_HASH_SUBSETTING`. Can only be set if load balancing scheme is `INTERNAL_MANAGED` or `INTERNAL_SELF_MANAGED`. `subset_size` is optional for Internal HTTP(S) load balancing and required for Traffic Director. If you do not provide this value, Cloud Load Balancing will calculate it dynamically to optimize the number of proxies/clients visible to each backend and vice versa. Must be greater than 0. If `subset_size` is larger than the number of backends/endpoints, then subsetting is disabled.
  SubsettingComputeBeta({
    this.policy,
    this.subsetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<SubsettingPolicyComputeBeta, String>(policy, (value) => value.value),
      'subsetSize': ?subsetSize,
    };
  }

  factory SubsettingComputeBeta.fromMap(Map<String, dynamic> map) {
    return SubsettingComputeBeta(
      policy: map['policy'] == null ? null : (SubsettingPolicyComputeBeta.fromValue(map['policy']! as String)).input(),
      subsetSize: map['subsetSize'] == null ? null : (map['subsetSize']! as int).input(),
    );
  }
}

