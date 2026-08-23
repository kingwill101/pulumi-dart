// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_group_placement_policy_collocation_compute_beta.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyComputeBeta {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final pulumi.Input<int>? availabilityDomainCount;
  /// Specifies network collocation
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyCollocationComputeBeta>? collocation;
  /// Specifies the number of max logical switches.
  final pulumi.Input<int>? maxDistance;
  /// Specifies the number of slices in a multislice workload.
  final pulumi.Input<int>? sliceCount;
  /// Specifies the shape of the TPU slice
  final pulumi.Input<String>? tpuTopology;
  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final pulumi.Input<int>? vmCount;

  /// Creates a new [ResourcePolicyGroupPlacementPolicyComputeBeta].
  /// [availabilityDomainCount] The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  /// [collocation] Specifies network collocation
  /// [maxDistance] Specifies the number of max logical switches.
  /// [sliceCount] Specifies the number of slices in a multislice workload.
  /// [tpuTopology] Specifies the shape of the TPU slice
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  const ResourcePolicyGroupPlacementPolicyComputeBeta({
    this.availabilityDomainCount,
    this.collocation,
    this.maxDistance,
    this.sliceCount,
    this.tpuTopology,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': ?availabilityDomainCount,
      'collocation': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyCollocationComputeBeta, String>(collocation, (value) => value.wireValue),
      'maxDistance': ?maxDistance,
      'sliceCount': ?sliceCount,
      'tpuTopology': ?tpuTopology,
      'vmCount': ?vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyComputeBeta(
      availabilityDomainCount: (() { final guardedValue = map['availabilityDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collocation: (() { final guardedValue = map['collocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicyCollocationComputeBeta.fromValue(guardedValue as String)); })(),
      maxDistance: (() { final guardedValue = map['maxDistance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sliceCount: (() { final guardedValue = map['sliceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tpuTopology: (() { final guardedValue = map['tpuTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
