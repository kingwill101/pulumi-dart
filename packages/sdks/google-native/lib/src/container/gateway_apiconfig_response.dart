// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigResponse {
  /// The Gateway API release channel to use for Gateway API.
  final pulumi.Input<String> channel;

  /// Creates a new [GatewayAPIConfigResponse].
  /// [channel] The Gateway API release channel to use for Gateway API.
  const GatewayAPIConfigResponse({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory GatewayAPIConfigResponse.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfigResponse(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}

