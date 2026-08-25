// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig {
  /// Defines the confidential compute type of the instance. Valid values are `"CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"`, `"SEV"`, `"SEV_SNP"`, `"TDX"`.
  final pulumi.Input<String?>? confidentialInstanceType;
  /// Defines whether the instance should have confidential compute enabled. `enableConfidentialCompute` is deprecated and will be removed in a future major release. Use `confidentialInstanceType` instead.
  final pulumi.Input<bool?>? enableConfidentialCompute;

  /// Creates a new [ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig].
  /// [confidentialInstanceType] Defines the confidential compute type of the instance. Valid values are `"CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"`, `"SEV"`, `"SEV_SNP"`, `"TDX"`.
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled. `enableConfidentialCompute` is deprecated and will be removed in a future major release. Use `confidentialInstanceType` instead.
  const ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig({
    this.confidentialInstanceType,
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig(
      confidentialInstanceType: (() { final guardedValue = map['confidentialInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
