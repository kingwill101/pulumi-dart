// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConnectorVersionInfraConfig {
  /// (Output)
  /// Max QPS supported by the connector version before throttling of requests.
  final pulumi.Input<String>? ratelimitThreshold;

  /// Creates a new [ConnectionConnectorVersionInfraConfig].
  /// [ratelimitThreshold] (Output)
  const ConnectionConnectorVersionInfraConfig({
    this.ratelimitThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ratelimitThreshold': ?ratelimitThreshold,
    };
  }

  factory ConnectionConnectorVersionInfraConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionConnectorVersionInfraConfig(
      ratelimitThreshold: (() { final guardedValue = map['ratelimitThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
