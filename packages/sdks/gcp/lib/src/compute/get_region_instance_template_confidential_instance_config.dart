// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateConfidentialInstanceConfig {
  /// The confidential computing technology the instance uses.
  /// SEV is an AMD feature. TDX is an Intel feature. One of the following
  /// values is required: SEV, SEV_SNP, TDX. If SEV_SNP, min_cpu_platform =
  /// "AMD Milan" is currently required.
  final pulumi.Input<String> confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled. `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM.
  final pulumi.Input<bool> enableConfidentialCompute;

  /// Creates a new [GetRegionInstanceTemplateConfidentialInstanceConfig].
  /// [confidentialInstanceType] The confidential computing technology the instance uses.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled. `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM.
  GetRegionInstanceTemplateConfidentialInstanceConfig({
    required this.confidentialInstanceType,
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enableConfidentialCompute': enableConfidentialCompute,
    };
  }

  factory GetRegionInstanceTemplateConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateConfidentialInstanceConfig(
      confidentialInstanceType: (map['confidentialInstanceType'] as String).input(),
      enableConfidentialCompute: (map['enableConfidentialCompute'] as bool).input(),
    );
  }
}

