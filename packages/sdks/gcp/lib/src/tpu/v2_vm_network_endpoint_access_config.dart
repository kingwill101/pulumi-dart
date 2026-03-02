// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2VmNetworkEndpointAccessConfig {
  /// (Output)
  /// An external IP address associated with the TPU worker.
  final pulumi.Input<String>? externalIp;

  /// Creates a new [V2VmNetworkEndpointAccessConfig].
  /// [externalIp] (Output)
  V2VmNetworkEndpointAccessConfig({
    this.externalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
    };
  }

  factory V2VmNetworkEndpointAccessConfig.fromMap(Map<String, dynamic> map) {
    return V2VmNetworkEndpointAccessConfig(
      externalIp: map['externalIp'] == null ? null : (map['externalIp'] as String).input(),
    );
  }
}

