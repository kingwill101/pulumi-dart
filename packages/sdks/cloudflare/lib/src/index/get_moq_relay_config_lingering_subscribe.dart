// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMoqRelayConfigLingeringSubscribe {
  final pulumi.Input<bool> enabled;
  /// Relay-level ceiling on lingering subscribe timeout (ms). Default 30000.
  final pulumi.Input<int> maxTimeoutMs;

  /// Creates a new [GetMoqRelayConfigLingeringSubscribe].
  /// [enabled] Required.
  /// [maxTimeoutMs] Relay-level ceiling on lingering subscribe timeout (ms). Default 30000.
  const GetMoqRelayConfigLingeringSubscribe({
    required this.enabled,
    required this.maxTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxTimeoutMs': maxTimeoutMs,
    };
  }

  factory GetMoqRelayConfigLingeringSubscribe.fromMap(Map<String, dynamic> map) {
    return GetMoqRelayConfigLingeringSubscribe(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxTimeoutMs: pulumi.Input.fromValue((map['maxTimeoutMs'] as num).toInt()),
    );
  }
}
