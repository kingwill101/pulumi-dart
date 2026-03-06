// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldTtlConfig {
  /// (Output)
  /// The state of TTL (time-to-live) configuration for documents that have this Field set.
  final pulumi.Input<String>? state;

  /// Creates a new [FieldTtlConfig].
  /// [state] (Output)
  const FieldTtlConfig({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory FieldTtlConfig.fromMap(Map<String, dynamic> map) {
    return FieldTtlConfig(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

