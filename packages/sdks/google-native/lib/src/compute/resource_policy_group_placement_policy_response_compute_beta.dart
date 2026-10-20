// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation as well as network locality
class ResourcePolicyGroupPlacementPolicyResponseComputeBeta {
  /// The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  final pulumi.Input<int> availabilityDomainCount;
  /// Specifies network collocation
  final pulumi.Input<String> collocation;
  /// Specifies the number of max logical switches.
  final pulumi.Input<int> maxDistance;
  /// Specifies the number of slices in a multislice workload.
  final pulumi.Input<int> sliceCount;
  /// Specifies the shape of the TPU slice
  final pulumi.Input<String> tpuTopology;
  /// Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  final pulumi.Input<int> vmCount;

  /// Creates a new [ResourcePolicyGroupPlacementPolicyResponseComputeBeta].
  /// [availabilityDomainCount] The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  /// [collocation] Specifies network collocation
  /// [maxDistance] Specifies the number of max logical switches.
  /// [sliceCount] Specifies the number of slices in a multislice workload.
  /// [tpuTopology] Specifies the shape of the TPU slice
  /// [vmCount] Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  const ResourcePolicyGroupPlacementPolicyResponseComputeBeta({
    required this.availabilityDomainCount,
    required this.collocation,
    required this.maxDistance,
    required this.sliceCount,
    required this.tpuTopology,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomainCount': availabilityDomainCount,
      'collocation': collocation,
      'maxDistance': maxDistance,
      'sliceCount': sliceCount,
      'tpuTopology': tpuTopology,
      'vmCount': vmCount,
    };
  }

  factory ResourcePolicyGroupPlacementPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyGroupPlacementPolicyResponseComputeBeta(
      availabilityDomainCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availabilityDomainCount'])),
      collocation: pulumi.Input.fromValue(map['collocation'] as String),
      maxDistance: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxDistance'])),
      sliceCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['sliceCount'])),
      tpuTopology: pulumi.Input.fromValue(map['tpuTopology'] as String),
      vmCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['vmCount'])),
    );
  }
}
