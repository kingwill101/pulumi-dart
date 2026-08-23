// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_group_placement_policy_collocation.dart';
import 'resource_policy_group_placement_policy_locality.dart';
import 'resource_policy_group_placement_policy_scope.dart';
import 'resource_policy_group_placement_policy_style.dart';

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicy {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final pulumi.Input<int>? availabilityDomainCount;
  /// Specifies network collocation
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyCollocation>? collocation;
  /// Specifies network locality
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyLocality>? locality;
  /// Specifies the number of max logical switches.
  final pulumi.Input<int>? maxDistance;
  /// Scope specifies the availability domain to which the VMs should be spread.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyScope>? scope;
  /// Specifies the number of slices in a multislice workload.
  final pulumi.Input<int>? sliceCount;
  /// Specifies instances to hosts placement relationship
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyStyle>? style;
  /// Specifies the shape of the TPU slice
  final pulumi.Input<String>? tpuTopology;
  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final pulumi.Input<int>? vmCount;

  /// Creates a new [ResourcePolicyGroupPlacementPolicy].
  /// [availabilityDomainCount] The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  /// [collocation] Specifies network collocation
  /// [locality] Specifies network locality
  /// [maxDistance] Specifies the number of max logical switches.
  /// [scope] Scope specifies the availability domain to which the VMs should be spread.
  /// [sliceCount] Specifies the number of slices in a multislice workload.
  /// [style] Specifies instances to hosts placement relationship
  /// [tpuTopology] Specifies the shape of the TPU slice
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  const ResourcePolicyGroupPlacementPolicy({
    this.availabilityDomainCount,
    this.collocation,
    this.locality,
    this.maxDistance,
    this.scope,
    this.sliceCount,
    this.style,
    this.tpuTopology,
    this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': ?availabilityDomainCount,
      'collocation': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyCollocation, String>(collocation, (value) => value.wireValue),
      'locality': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyLocality, String>(locality, (value) => value.wireValue),
      'maxDistance': ?maxDistance,
      'scope': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyScope, String>(scope, (value) => value.wireValue),
      'sliceCount': ?sliceCount,
      'style': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyStyle, String>(style, (value) => value.wireValue),
      'tpuTopology': ?tpuTopology,
      'vmCount': ?vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicy(
      availabilityDomainCount: (() { final guardedValue = map['availabilityDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collocation: (() { final guardedValue = map['collocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicyCollocation.fromValue(guardedValue as String)); })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicyLocality.fromValue(guardedValue as String)); })(),
      maxDistance: (() { final guardedValue = map['maxDistance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicyScope.fromValue(guardedValue as String)); })(),
      sliceCount: (() { final guardedValue = map['sliceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      style: (() { final guardedValue = map['style']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyGroupPlacementPolicyStyle.fromValue(guardedValue as String)); })(),
      tpuTopology: (() { final guardedValue = map['tpuTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmCount: (() { final guardedValue = map['vmCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
