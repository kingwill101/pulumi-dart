// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to sinks in DiagnosticsDescription.
class DiagnosticsRef {
  /// Status of whether or not sinks are enabled.
  final pulumi.Input<bool?>? enabled;
  /// List of sinks to be used if enabled. References the list of sinks in DiagnosticsDescription.
  final pulumi.Input<List<String>?>? sinkRefs;

  /// Creates a new [DiagnosticsRef].
  /// [enabled] Status of whether or not sinks are enabled.
  /// [sinkRefs] List of sinks to be used if enabled. References the list of sinks in DiagnosticsDescription.
  const DiagnosticsRef({
    this.enabled,
    this.sinkRefs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'sinkRefs': ?sinkRefs,
    };
  }

  factory DiagnosticsRef.fromMap(Map<String, dynamic> map) {
    return DiagnosticsRef(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sinkRefs: (() { final guardedValue = map['sinkRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
