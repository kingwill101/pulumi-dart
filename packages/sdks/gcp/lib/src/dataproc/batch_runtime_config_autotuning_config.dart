// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchRuntimeConfigAutotuningConfig {
  /// Optional. Scenarios for which tunings are applied.
  /// Each value may be one of: `SCALING`, `BROADCAST_HASH_JOIN`, `MEMORY`.
  final pulumi.Input<List<String>>? scenarios;

  /// Creates a new [BatchRuntimeConfigAutotuningConfig].
  /// [scenarios] Optional. Scenarios for which tunings are applied.
  const BatchRuntimeConfigAutotuningConfig({
    this.scenarios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scenarios': ?scenarios,
    };
  }

  factory BatchRuntimeConfigAutotuningConfig.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeConfigAutotuningConfig(
      scenarios: (() { final guardedValue = map['scenarios']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

