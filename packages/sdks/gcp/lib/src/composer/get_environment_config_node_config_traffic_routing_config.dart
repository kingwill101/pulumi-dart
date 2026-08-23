// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigNodeConfigTrafficRoutingConfig {
  /// Traffic routing mode for Cloud Run functions. Possible values: ["DIRECT", "VIA_NETWORK_ATTACHMENT"]
  final pulumi.Input<String> cloudRunFunctionsRouting;

  /// Creates a new [GetEnvironmentConfigNodeConfigTrafficRoutingConfig].
  /// [cloudRunFunctionsRouting] Traffic routing mode for Cloud Run functions. Possible values: ["DIRECT", "VIA_NETWORK_ATTACHMENT"]
  const GetEnvironmentConfigNodeConfigTrafficRoutingConfig({
    required this.cloudRunFunctionsRouting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRunFunctionsRouting': cloudRunFunctionsRouting,
    };
  }

  factory GetEnvironmentConfigNodeConfigTrafficRoutingConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigNodeConfigTrafficRoutingConfig(
      cloudRunFunctionsRouting: pulumi.Input.fromValue(map['cloudRunFunctionsRouting'] as String),
    );
  }
}
