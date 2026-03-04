// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyResponse {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final pulumi.Input<int> availabilityDomainCount;

  /// Specifies network collocation
  final pulumi.Input<String> collocation;

  /// Specifies network locality
  final pulumi.Input<String> locality;

  /// Specifies the number of max logical switches.
  final pulumi.Input<int> maxDistance;

  /// Scope specifies the availability domain to which the VMs should be spread.
  final pulumi.Input<String> scope;

  /// Specifies the number of slices in a multislice workload.
  final pulumi.Input<int> sliceCount;

  /// Specifies instances to hosts placement relationship
  final pulumi.Input<String> style;

  /// Specifies the shape of the TPU slice
  final pulumi.Input<String> tpuTopology;

  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final pulumi.Input<int> vmCount;

  /// Creates a new [ResourcePolicyGroupPlacementPolicyResponse].
  /// [availabilityDomainCount] The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  /// [collocation] Specifies network collocation
  /// [locality] Specifies network locality
  /// [maxDistance] Specifies the number of max logical switches.
  /// [scope] Scope specifies the availability domain to which the VMs should be spread.
  /// [sliceCount] Specifies the number of slices in a multislice workload.
  /// [style] Specifies instances to hosts placement relationship
  /// [tpuTopology] Specifies the shape of the TPU slice
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  ResourcePolicyGroupPlacementPolicyResponse({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.locality,
    required this.maxDistance,
    required this.scope,
    required this.sliceCount,
    required this.style,
    required this.tpuTopology,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': availabilityDomainCount,
      'collocation': collocation,
      'locality': locality,
      'maxDistance': maxDistance,
      'scope': scope,
      'sliceCount': sliceCount,
      'style': style,
      'tpuTopology': tpuTopology,
      'vmCount': vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyGroupPlacementPolicyResponse(
      availabilityDomainCount: pulumi.Input.fromValue(
        map['availabilityDomainCount'] as int,
      ),
      collocation: pulumi.Input.fromValue(map['collocation'] as String),
      locality: pulumi.Input.fromValue(map['locality'] as String),
      maxDistance: pulumi.Input.fromValue(map['maxDistance'] as int),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      sliceCount: pulumi.Input.fromValue(map['sliceCount'] as int),
      style: pulumi.Input.fromValue(map['style'] as String),
      tpuTopology: pulumi.Input.fromValue(map['tpuTopology'] as String),
      vmCount: pulumi.Input.fromValue(map['vmCount'] as int),
    );
  }
}
