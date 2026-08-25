// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceTemplateConfidentialInstanceConfig {
  /// Defines the confidential computing technology the instance uses. SEV is an AMD feature. TDX is an Intel feature. One of the following values is required: `SEV`, `SEV_SNP`, `TDX`. `onHostMaintenance` can be set to MIGRATE if `confidentialInstanceType` is set to `SEV` and `minCpuPlatform` is set to `"AMD Milan"` or `"AMD Genoa"`. Otherwise, `onHostMaintenance` has to be set to TERMINATE or this will fail to create the VM. If `SEV_SNP`, currently `minCpuPlatform` has to be set to `"AMD Milan"` or this will fail to create the VM.
  final pulumi.Input<String?>? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled with AMD SEV. If enabled, `onHostMaintenance` can be set to MIGRATE if `minCpuPlatform` is set to `"AMD Milan"` or `"AMD Genoa"`. Otherwise, `onHostMaintenance` has to be set to TERMINATE or this will fail to create the VM.
  final pulumi.Input<bool?>? enableConfidentialCompute;

  /// Creates a new [RegionInstanceTemplateConfidentialInstanceConfig].
  /// [confidentialInstanceType] Defines the confidential computing technology the instance uses. SEV is an AMD feature. TDX is an Intel feature. One of the following values is required: `SEV`, `SEV_SNP`, `TDX`. `onHostMaintenance` can be set to MIGRATE if `confidentialInstanceType` is set to `SEV` and `minCpuPlatform` is set to `"AMD Milan"` or `"AMD Genoa"`. Otherwise, `onHostMaintenance` has to be set to TERMINATE or this will fail to create the VM. If `SEV_SNP`, currently `minCpuPlatform` has to be set to `"AMD Milan"` or this will fail to create the VM.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled with AMD SEV. If enabled, `onHostMaintenance` can be set to MIGRATE if `minCpuPlatform` is set to `"AMD Milan"` or `"AMD Genoa"`. Otherwise, `onHostMaintenance` has to be set to TERMINATE or this will fail to create the VM.
  const RegionInstanceTemplateConfidentialInstanceConfig({
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
      confidentialInstanceType: (() { final guardedValue = map['confidentialInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
