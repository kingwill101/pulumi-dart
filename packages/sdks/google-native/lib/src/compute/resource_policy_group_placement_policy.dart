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
  ResourcePolicyGroupPlacementPolicy({
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
      'collocation': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyCollocation, String>(collocation, (value) => value.value),
      'locality': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyLocality, String>(locality, (value) => value.value),
      'maxDistance': ?maxDistance,
      'scope': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyScope, String>(scope, (value) => value.value),
      'sliceCount': ?sliceCount,
      'style': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyGroupPlacementPolicyStyle, String>(style, (value) => value.value),
      'tpuTopology': ?tpuTopology,
      'vmCount': ?vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicy(
      availabilityDomainCount: map['availabilityDomainCount'] == null ? null : (map['availabilityDomainCount'] as int).input(),
      collocation: map['collocation'] == null ? null : (ResourcePolicyGroupPlacementPolicyCollocation.fromValue(map['collocation'] as String)).input(),
      locality: map['locality'] == null ? null : (ResourcePolicyGroupPlacementPolicyLocality.fromValue(map['locality'] as String)).input(),
      maxDistance: map['maxDistance'] == null ? null : (map['maxDistance'] as int).input(),
      scope: map['scope'] == null ? null : (ResourcePolicyGroupPlacementPolicyScope.fromValue(map['scope'] as String)).input(),
      sliceCount: map['sliceCount'] == null ? null : (map['sliceCount'] as int).input(),
      style: map['style'] == null ? null : (ResourcePolicyGroupPlacementPolicyStyle.fromValue(map['style'] as String)).input(),
      tpuTopology: map['tpuTopology'] == null ? null : (map['tpuTopology'] as String).input(),
      vmCount: map['vmCount'] == null ? null : (map['vmCount'] as int).input(),
    );
  }
}

