// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_apiconfig_channel.dart';

/// GatewayAPIConfig contains the desired config of Gateway API on this cluster.
class GatewayAPIConfig {
  /// The Gateway API release channel to use for Gateway API.
  final pulumi.Input<GatewayAPIConfigChannel>? channel;

  /// Creates a new [GatewayAPIConfig].
  /// [channel] The Gateway API release channel to use for Gateway API.
  const GatewayAPIConfig({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?pulumi.Input.mapOptionalInputValue<GatewayAPIConfigChannel, String>(channel, (value) => value.wireValue),
    };
  }

  factory GatewayAPIConfig.fromMap(Map<String, dynamic> map) {
    return GatewayAPIConfig(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayAPIConfigChannel.fromValue(guardedValue as String)); })(),
    );
  }
}

