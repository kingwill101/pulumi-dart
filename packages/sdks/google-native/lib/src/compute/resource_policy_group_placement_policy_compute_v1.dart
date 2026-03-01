// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_collocation_compute_v1.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyComputeV1 {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final int? availabilityDomainCount;
  /// Specifies network collocation
  final ResourcePolicyGroupPlacementPolicyCollocationComputeV1? collocation;
  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final int? vmCount;

  /// Creates a new [ResourcePolicyGroupPlacementPolicyComputeV1].
  /// [availabilityDomainCount] The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  /// [collocation] Specifies network collocation
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  ResourcePolicyGroupPlacementPolicyComputeV1({
    this.availabilityDomainCount,
    this.collocation,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': ?availabilityDomainCount,
      'collocation': ?collocation == null ? null : collocation!.value,
      'vmCount': ?vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyComputeV1(
      availabilityDomainCount: map['availabilityDomainCount'] == null ? null : map['availabilityDomainCount'] as int,
      collocation: map['collocation'] == null ? null : ResourcePolicyGroupPlacementPolicyCollocationComputeV1.fromValue(map['collocation'] as String),
      vmCount: map['vmCount'] == null ? null : map['vmCount'] as int,
    );
  }
}

