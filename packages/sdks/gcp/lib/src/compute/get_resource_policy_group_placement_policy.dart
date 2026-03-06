// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicyGroupPlacementPolicy {
  /// The number of availability domains instances will be spread across. If two instances are in different
  /// availability domain, they will not be put in the same low latency network
  final pulumi.Input<int> availabilityDomainCount;
  /// Collocation specifies whether to place VMs inside the same availability domain on the same low-latency network.
  /// Specify 'COLLOCATED' to enable collocation. Can only be specified with 'vm_count'. If compute instances are created
  /// with a COLLOCATED policy, then exactly 'vm_count' instances must be created at the same time with the resource policy
  /// attached. Possible values: ["COLLOCATED"]
  final pulumi.Input<String> collocation;
  /// Specifies the shape of the GPU slice, in slice based GPU families eg. A4X.
  final pulumi.Input<String> gpuTopology;
  /// Specifies the number of max logical switches.
  final pulumi.Input<int> maxDistance;
  /// Specifies the shape of the TPU slice.
  final pulumi.Input<String> tpuTopology;
  /// Number of VMs in this placement group. Google does not recommend that you use this field
  /// unless you use a compact policy and you want your policy to work only if it contains this
  /// exact number of VMs.
  final pulumi.Input<int> vmCount;

  /// Creates a new [GetResourcePolicyGroupPlacementPolicy].
  /// [availabilityDomainCount] The number of availability domains instances will be spread across. If two instances are in different
  /// [collocation] Collocation specifies whether to place VMs inside the same availability domain on the same low-latency network.
  /// [gpuTopology] Specifies the shape of the GPU slice, in slice based GPU families eg. A4X.
  /// [maxDistance] Specifies the number of max logical switches.
  /// [tpuTopology] Specifies the shape of the TPU slice.
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field
  const GetResourcePolicyGroupPlacementPolicy({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.gpuTopology,
    required this.maxDistance,
    required this.tpuTopology,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': availabilityDomainCount,
      'collocation': collocation,
      'gpuTopology': gpuTopology,
      'maxDistance': maxDistance,
      'tpuTopology': tpuTopology,
      'vmCount': vmCount,
    };
  }

  factory GetResourcePolicyGroupPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyGroupPlacementPolicy(
      availabilityDomainCount: pulumi.Input.fromValue(map['availabilityDomainCount'] as int),
      collocation: pulumi.Input.fromValue(map['collocation'] as String),
      gpuTopology: pulumi.Input.fromValue(map['gpuTopology'] as String),
      maxDistance: pulumi.Input.fromValue(map['maxDistance'] as int),
      tpuTopology: pulumi.Input.fromValue(map['tpuTopology'] as String),
      vmCount: pulumi.Input.fromValue(map['vmCount'] as int),
    );
  }
}

