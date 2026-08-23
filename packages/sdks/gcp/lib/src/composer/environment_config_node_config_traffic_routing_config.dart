// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigNodeConfigTrafficRoutingConfig {
  /// Traffic routing mode for Cloud Run functions. Possible values: ["DIRECT", "VIA_NETWORK_ATTACHMENT"]
  final pulumi.Input<String>? cloudRunFunctionsRouting;

  /// Creates a new [EnvironmentConfigNodeConfigTrafficRoutingConfig].
  /// [cloudRunFunctionsRouting] Traffic routing mode for Cloud Run functions. Possible values: ["DIRECT", "VIA_NETWORK_ATTACHMENT"]
  const EnvironmentConfigNodeConfigTrafficRoutingConfig({
    this.cloudRunFunctionsRouting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunFunctionsRouting': ?cloudRunFunctionsRouting,
    };
  }

  factory EnvironmentConfigNodeConfigTrafficRoutingConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigNodeConfigTrafficRoutingConfig(
      cloudRunFunctionsRouting: (() { final guardedValue = map['cloudRunFunctionsRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
