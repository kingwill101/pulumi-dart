// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryScanConfigSecretScanConfig {
  /// Enables secret scanning for the repository.
  final pulumi.Input<bool>? enabled;
  /// The DLP inspect template to use for secret scanning.
  final pulumi.Input<String>? inspectTemplate;

  /// Creates a new [RepositoryScanConfigSecretScanConfig].
  /// [enabled] Enables secret scanning for the repository.
  /// [inspectTemplate] The DLP inspect template to use for secret scanning.
  const RepositoryScanConfigSecretScanConfig({
    this.enabled,
    this.inspectTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'inspectTemplate': ?inspectTemplate,
    };
  }

  factory RepositoryScanConfigSecretScanConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryScanConfigSecretScanConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inspectTemplate: (() { final guardedValue = map['inspectTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
