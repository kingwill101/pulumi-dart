// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmsMicroVmAutoPause {
  /// Whether auto-pause is enabled. Forces recreation on change (no in-place API path).
  final pulumi.Input<bool> enabled;
  /// Idle timeout as a Go duration string (e.g. '5m', '30s'). Forces recreation on change (no in-place API path).
  final pulumi.Input<String> idleTimeout;

  /// Creates a new [GetMicrovmsMicroVmAutoPause].
  /// [enabled] Whether auto-pause is enabled. Forces recreation on change (no in-place API path).
  /// [idleTimeout] Idle timeout as a Go duration string (e.g. '5m', '30s'). Forces recreation on change (no in-place API path).
  const GetMicrovmsMicroVmAutoPause({
    required this.enabled,
    required this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'idleTimeout': idleTimeout,
    };
  }

  factory GetMicrovmsMicroVmAutoPause.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsMicroVmAutoPause(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      idleTimeout: pulumi.Input.fromValue(map['idleTimeout'] as String),
    );
  }
}
