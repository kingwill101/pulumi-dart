// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MoqRelayConfigLingeringSubscribe {
  final pulumi.Input<bool?>? enabled;
  /// Relay-level ceiling on lingering subscribe timeout (ms). Default 30000.
  final pulumi.Input<int?>? maxTimeoutMs;

  /// Creates a new [MoqRelayConfigLingeringSubscribe].
  /// [enabled] Optional.
  /// [maxTimeoutMs] Relay-level ceiling on lingering subscribe timeout (ms). Default 30000.
  const MoqRelayConfigLingeringSubscribe({
    this.enabled,
    this.maxTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxTimeoutMs': ?maxTimeoutMs,
    };
  }

  factory MoqRelayConfigLingeringSubscribe.fromMap(Map<String, dynamic> map) {
    return MoqRelayConfigLingeringSubscribe(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxTimeoutMs: (() { final guardedValue = map['maxTimeoutMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
