// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigResponseContainerV1beta1 {
  /// The Gateway API release channel to use for Gateway API.
  final pulumi.Input<String> channel;

  /// Creates a new [GatewayAPIConfigResponseContainerV1beta1].
  /// [channel] The Gateway API release channel to use for Gateway API.
  GatewayAPIConfigResponseContainerV1beta1({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory GatewayAPIConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfigResponseContainerV1beta1(
      channel: pulumi.Input.fromValue(map['channel'] as String),
    );
  }
}

