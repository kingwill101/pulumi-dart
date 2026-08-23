// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_scan_config_secret_scan_config.dart';

class RepositoryScanConfig {
  /// Configuration for secret scanning.
  /// Structure is documented below.
  final pulumi.Input<RepositoryScanConfigSecretScanConfig>? secretScanConfig;

  /// Creates a new [RepositoryScanConfig].
  /// [secretScanConfig] Configuration for secret scanning.
  const RepositoryScanConfig({
    this.secretScanConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretScanConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryScanConfigSecretScanConfig, Map<String, dynamic>>(secretScanConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryScanConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryScanConfig(
      secretScanConfig: (() { final guardedValue = map['secretScanConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryScanConfigSecretScanConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
