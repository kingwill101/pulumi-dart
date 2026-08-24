// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_moq_relay_config_lingering_subscribe.dart';
import 'get_moq_relay_config_upstreams.dart';

class GetMoqRelayConfig {
  final pulumi.Input<GetMoqRelayConfigLingeringSubscribe> lingeringSubscribe;
  /// Upstreams are external MOQT server publishers that a relay falls back
  /// to when it has no local publisher for a requested namespace/track.
  final pulumi.Input<GetMoqRelayConfigUpstreams> upstreams;

  /// Creates a new [GetMoqRelayConfig].
  /// [lingeringSubscribe] Required.
  /// [upstreams] Upstreams are external MOQT server publishers that a relay falls back
  const GetMoqRelayConfig({
    required this.lingeringSubscribe,
    required this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lingeringSubscribe': pulumi.Input.mapInputValue<GetMoqRelayConfigLingeringSubscribe, Map<String, dynamic>>(lingeringSubscribe, (value) => value.toMap()),
      'upstreams': pulumi.Input.mapInputValue<GetMoqRelayConfigUpstreams, Map<String, dynamic>>(upstreams, (value) => value.toMap()),
    };
  }

  factory GetMoqRelayConfig.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayConfig(
      lingeringSubscribe: pulumi.Input.fromValue(GetMoqRelayConfigLingeringSubscribe.fromMap((map['lingeringSubscribe']! as Map).cast<String, dynamic>())),
      upstreams: pulumi.Input.fromValue(GetMoqRelayConfigUpstreams.fromMap((map['upstreams']! as Map).cast<String, dynamic>())),
    );
  }
}
