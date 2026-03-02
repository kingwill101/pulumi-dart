// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to sinks in DiagnosticsDescription.
class DiagnosticsRefResponse {
  /// Status of whether or not sinks are enabled.
  final pulumi.Input<bool>? enabled;
  /// List of sinks to be used if enabled. References the list of sinks in DiagnosticsDescription.
  final pulumi.Input<List<String>>? sinkRefs;

  /// Creates a new [DiagnosticsRefResponse].
  /// [enabled] Status of whether or not sinks are enabled.
  /// [sinkRefs] List of sinks to be used if enabled. References the list of sinks in DiagnosticsDescription.
  DiagnosticsRefResponse({
    this.enabled,
    this.sinkRefs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'sinkRefs': ?sinkRefs,
    };
  }

  factory DiagnosticsRefResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticsRefResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      sinkRefs: map['sinkRefs'] == null ? null : ((map['sinkRefs']! as List).cast<String>()).input(),
    );
  }
}

