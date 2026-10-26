// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmAutoPause {
  /// Whether auto-pause is enabled.
  final pulumi.Input<bool> enabled;
  /// How long the MicroVM must be idle before it pauses.
  final pulumi.Input<String> idleTimeout;

  /// Creates a new [GetMicrovmAutoPause].
  /// [enabled] Whether auto-pause is enabled.
  /// [idleTimeout] How long the MicroVM must be idle before it pauses.
  const GetMicrovmAutoPause({
    required this.enabled,
    required this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'idleTimeout': idleTimeout,
    };
  }

  factory GetMicrovmAutoPause.fromMap(Map<String, dynamic> map) {
    return GetMicrovmAutoPause(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      idleTimeout: pulumi.Input.fromValue(map['idleTimeout'] as String),
    );
  }
}
