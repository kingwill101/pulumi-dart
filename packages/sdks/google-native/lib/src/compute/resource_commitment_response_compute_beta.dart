// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment for a particular resource (a Commitment is composed of one or more of these).
class ResourceCommitmentResponseComputeBeta {
  /// Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  final pulumi.Input<String> acceleratorType;
  /// The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  final pulumi.Input<String> amount;
  /// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceCommitmentResponseComputeBeta].
  /// [acceleratorType] Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  /// [amount] The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  /// [type] Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  const ResourceCommitmentResponseComputeBeta({
    required this.acceleratorType,
    required this.amount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'amount': amount,
      'type': type,
    };
  }

  factory ResourceCommitmentResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourceCommitmentResponseComputeBeta(
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      amount: pulumi.Input.fromValue(map['amount'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

