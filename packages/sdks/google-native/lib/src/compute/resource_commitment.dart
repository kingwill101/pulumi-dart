// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_commitment_type.dart';

/// Commitment for a particular resource (a Commitment is composed of one or more of these).
class ResourceCommitment {
  /// Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  final pulumi.Input<String>? acceleratorType;
  /// The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  final pulumi.Input<String>? amount;
  /// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  final pulumi.Input<ResourceCommitmentType>? type;

  /// Creates a new [ResourceCommitment].
  /// [acceleratorType] Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  /// [amount] The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  /// [type] Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  ResourceCommitment({
    this.acceleratorType,
    this.amount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'amount': ?amount,
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceCommitmentType, String>(type, (value) => value.value),
    };
  }

  factory ResourceCommitment.fromMap(Map<String, dynamic> map) {
    return ResourceCommitment(
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType']! as String).input(),
      amount: map['amount'] == null ? null : (map['amount']! as String).input(),
      type: map['type'] == null ? null : (ResourceCommitmentType.fromValue(map['type']! as String)).input(),
    );
  }
}

