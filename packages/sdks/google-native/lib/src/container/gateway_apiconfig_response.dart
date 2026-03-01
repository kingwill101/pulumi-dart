// ignore_for_file: unused_element, unnecessary_cast


/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigResponse {
  /// The Gateway API release channel to use for Gateway API.
  final String channel;

  /// Creates a new [GatewayAPIConfigResponse].
  /// [channel] The Gateway API release channel to use for Gateway API.
  GatewayAPIConfigResponse({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory GatewayAPIConfigResponse.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfigResponse(
      channel: map['channel'] as String,
    );
  }
}

