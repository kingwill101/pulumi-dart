// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP, min_cpu_platform =
  /// "AMD Milan" is currently required.
  final pulumi.Input<String>? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [InstanceFromMachineImageConfidentialInstanceConfig].
  /// [confidentialInstanceType] The confidential computing technology the instance uses.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release
  const InstanceFromMachineImageConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory InstanceFromMachineImageConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageConfidentialInstanceConfig(
      confidentialInstanceType: (() { final guardedValue = map['confidentialInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

