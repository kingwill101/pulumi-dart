// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_apiconfig_channel_container_v1beta1.dart';

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfigContainerV1beta1 {
  /// The Gateway API release channel to use for Gateway API.
  final pulumi.Input<GatewayAPIConfigChannelContainerV1beta1>? channel;

  /// Creates a new [GatewayAPIConfigContainerV1beta1].
  /// [channel] The Gateway API release channel to use for Gateway API.
  GatewayAPIConfigContainerV1beta1({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?pulumi.Input.mapOptionalInputValue<GatewayAPIConfigChannelContainerV1beta1, String>(channel, (value) => value.wireValue),
    };
  }

  factory GatewayAPIConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfigContainerV1beta1(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayAPIConfigChannelContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

