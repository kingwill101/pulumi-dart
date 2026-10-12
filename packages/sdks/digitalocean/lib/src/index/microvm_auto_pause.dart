// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmAutoPause {
  /// Whether the MicroVM pauses after it has been idle for `idleTimeout`.
  final pulumi.Input<bool> enabled;
  /// How long the MicroVM must be idle before it pauses, as a duration such as `5m` or `30s`.
  final pulumi.Input<String?>? idleTimeout;

  /// Creates a new [MicrovmAutoPause].
  /// [enabled] Whether the MicroVM pauses after it has been idle for `idleTimeout`.
  /// [idleTimeout] How long the MicroVM must be idle before it pauses, as a duration such as `5m` or `30s`.
  const MicrovmAutoPause({
    required this.enabled,
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'idleTimeout': ?idleTimeout,
    };
  }

  factory MicrovmAutoPause.fromMap(Map<String, dynamic> map) {
    return MicrovmAutoPause(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
