// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final pulumi.Input<bool> enableIntegrityMonitoring;

  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool> enableSecureBoot;

  /// Creates a new [GetClusterNodeConfigShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  GetClusterNodeConfigShieldedInstanceConfig({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
    };
  }

  factory GetClusterNodeConfigShieldedInstanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: pulumi.Input.fromValue(
        map['enableIntegrityMonitoring'] as bool,
      ),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
    );
  }
}
