// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_group_placement_policy_collocation_compute_v1.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyComputeV1 {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final pulumi.Input<int>? availabilityDomainCount;
  /// Specifies network collocation
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyCollocationComputeV1>? collocation;
  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final pulumi.Input<int>? vmCount;

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
      'collocation': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyCollocationComputeV1, String>(collocation, (value) => value.wireValue),
      'vmCount': ?vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyComputeV1(
      availabilityDomainCount: (() { final guardedValue = map['availabilityDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collocation: (() { final guardedValue = map['collocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicyCollocationComputeV1.fromValue(guardedValue as String)); })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

