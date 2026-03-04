// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_commitment_type_compute_v1.dart';

/// Commitment for a particular resource (a Commitment is composed of one or more of these).
class ResourceCommitmentComputeV1 {
  /// Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  final pulumi.Input<String>? acceleratorType;

  /// The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  final pulumi.Input<String>? amount;

  /// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  final pulumi.Input<ResourceCommitmentTypeComputeV1>? type;

  /// Creates a new [ResourceCommitmentComputeV1].
  /// [acceleratorType] Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  /// [amount] The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  /// [type] Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  ResourceCommitmentComputeV1({this.acceleratorType, this.amount, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'amount': ?amount,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceCommitmentTypeComputeV1,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory ResourceCommitmentComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourceCommitmentComputeV1(
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceCommitmentTypeComputeV1.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
