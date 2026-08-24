// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptObservabilityTraces {
  /// A list of destinations where traces will be exported to.
  final pulumi.Input<List<String>?>? destinations;
  /// Whether traces are enabled for the Worker.
  final pulumi.Input<bool?>? enabled;
  /// The sampling rate for traces. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  final pulumi.Input<double?>? headSamplingRate;
  /// Whether trace persistence is enabled for the Worker.
  final pulumi.Input<bool?>? persist;
  /// Controls how inbound trace context (traceparent/tracestate) headers on incoming requests are handled. "authenticated" (default) honors inbound trace context only when accompanied by a valid trace auth token. "accept" unconditionally accepts inbound trace context. Requires the trace propagation feature to be enabled.
  /// Available values: "authenticated", "accept".
  final pulumi.Input<String?>? propagationPolicy;

  /// Creates a new [WorkersScriptObservabilityTraces].
  /// [destinations] A list of destinations where traces will be exported to.
  /// [enabled] Whether traces are enabled for the Worker.
  /// [headSamplingRate] The sampling rate for traces. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  /// [persist] Whether trace persistence is enabled for the Worker.
  /// [propagationPolicy] Controls how inbound trace context (traceparent/tracestate) headers on incoming requests are handled. "authenticated" (default) honors inbound trace context only when accompanied by a valid trace auth token. "accept" unconditionally accepts inbound trace context. Requires the trace propagation feature to be enabled.
  const WorkersScriptObservabilityTraces({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.persist,
    this.propagationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'enabled': ?enabled,
      'headSamplingRate': ?headSamplingRate,
      'persist': ?persist,
      'propagationPolicy': ?propagationPolicy,
    };
  }

  factory WorkersScriptObservabilityTraces.fromMap(Map<String, dynamic> map) {
    return WorkersScriptObservabilityTraces(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headSamplingRate: (() { final guardedValue = map['headSamplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      persist: (() { final guardedValue = map['persist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      propagationPolicy: (() { final guardedValue = map['propagationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
