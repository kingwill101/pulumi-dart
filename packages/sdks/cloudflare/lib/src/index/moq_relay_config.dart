// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'moq_relay_config_lingering_subscribe.dart';
import 'moq_relay_config_upstreams.dart';

class MoqRelayConfig {
  final pulumi.Input<MoqRelayConfigLingeringSubscribe?>? lingeringSubscribe;
  /// Upstreams are external MOQT server publishers that a relay falls back
  /// to when it has no local publisher for a requested namespace/track.
  final pulumi.Input<MoqRelayConfigUpstreams?>? upstreams;

  /// Creates a new [MoqRelayConfig].
  /// [lingeringSubscribe] Optional.
  /// [upstreams] Upstreams are external MOQT server publishers that a relay falls back
  const MoqRelayConfig({
    this.lingeringSubscribe,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lingeringSubscribe': ?pulumi.Input.mapOptionalInputValue<MoqRelayConfigLingeringSubscribe, Map<String, dynamic>>(lingeringSubscribe, (value) => value.toMap()),
      'upstreams': ?pulumi.Input.mapOptionalInputValue<MoqRelayConfigUpstreams, Map<String, dynamic>>(upstreams, (value) => value.toMap()),
    };
  }

  factory MoqRelayConfig.fromMap(Map<String, dynamic> map) {
    return MoqRelayConfig(
      lingeringSubscribe: (() { final guardedValue = map['lingeringSubscribe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MoqRelayConfigLingeringSubscribe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upstreams: (() { final guardedValue = map['upstreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MoqRelayConfigUpstreams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
