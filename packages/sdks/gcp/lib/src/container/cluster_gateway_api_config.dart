// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterGatewayApiConfig {
  /// Which Gateway Api channel should be used. `CHANNEL_DISABLED`, `CHANNEL_EXPERIMENTAL` or `CHANNEL_STANDARD`.
  final pulumi.Input<String> channel;

  /// Creates a new [ClusterGatewayApiConfig].
  /// [channel] Which Gateway Api channel should be used. `CHANNEL_DISABLED`, `CHANNEL_EXPERIMENTAL` or `CHANNEL_STANDARD`.
  ClusterGatewayApiConfig({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory ClusterGatewayApiConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGatewayApiConfig(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}

