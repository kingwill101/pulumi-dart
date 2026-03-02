// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceTemplateConfidentialInstanceConfig {
  /// Defines the confidential computing technology the instance uses. SEV is an AMD feature. TDX is an Intel feature. One of the following values is required: `SEV`, `SEV_SNP`, `TDX`. `on_host_maintenance` can be set to MIGRATE if `confidential_instance_type` is set to `SEV` and `min_cpu_platform` is set to `"AMD Milan"`. Otherwise, `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM. If `SEV_SNP`, currently `min_cpu_platform` has to be set to `"AMD Milan"` or this will fail to create the VM.
  final pulumi.Input<String>? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled with AMD SEV. If enabled, `on_host_maintenance` can be set to MIGRATE if `min_cpu_platform` is set to `"AMD Milan"`. Otherwise, `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Creates a new [RegionInstanceTemplateConfidentialInstanceConfig].
  /// [confidentialInstanceType] Defines the confidential computing technology the instance uses. SEV is an AMD feature. TDX is an Intel feature. One of the following values is required: `SEV`, `SEV_SNP`, `TDX`. `on_host_maintenance` can be set to MIGRATE if `confidential_instance_type` is set to `SEV` and `min_cpu_platform` is set to `"AMD Milan"`. Otherwise, `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM. If `SEV_SNP`, currently `min_cpu_platform` has to be set to `"AMD Milan"` or this will fail to create the VM.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled with AMD SEV. If enabled, `on_host_maintenance` can be set to MIGRATE if `min_cpu_platform` is set to `"AMD Milan"`. Otherwise, `on_host_maintenance` has to be set to TERMINATE or this will fail to create the VM.
  RegionInstanceTemplateConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory RegionInstanceTemplateConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null ? null : (map['confidentialInstanceType'] as String).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute'] as bool).input(),
    );
  }
}

