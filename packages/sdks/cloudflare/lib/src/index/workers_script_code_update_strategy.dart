// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptCodeUpdateStrategy {
  /// Set the maximum number of seconds to wait before forcing the update. When omitted, the default maximum delay applies.
  final pulumi.Input<double?>? maxDelay;
  /// Apply Durable Object code updates immediately.
  /// Available values: "immediate", "deferred".
  final pulumi.Input<String> mode;

  /// Creates a new [WorkersScriptCodeUpdateStrategy].
  /// [maxDelay] Set the maximum number of seconds to wait before forcing the update. When omitted, the default maximum delay applies.
  /// [mode] Apply Durable Object code updates immediately.
  const WorkersScriptCodeUpdateStrategy({
    this.maxDelay,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDelay': ?maxDelay,
      'mode': mode,
    };
  }

  factory WorkersScriptCodeUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return WorkersScriptCodeUpdateStrategy(
      maxDelay: (() { final guardedValue = map['maxDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
