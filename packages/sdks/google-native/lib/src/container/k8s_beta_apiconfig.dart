// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// K8sBetaAPIConfig , configuration for beta APIs
class K8sBetaAPIConfig {
  /// Enabled k8s beta APIs.
  final pulumi.Input<List<String>>? enabledApis;

  /// Creates a new [K8sBetaAPIConfig].
  /// [enabledApis] Enabled k8s beta APIs.
  K8sBetaAPIConfig({
    this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledApis': ?enabledApis,
    };
  }

  factory K8sBetaAPIConfig.fromMap(Map<String, dynamic> map) {
    return K8sBetaAPIConfig(
      enabledApis: (() { final guardedValue = map['enabledApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

