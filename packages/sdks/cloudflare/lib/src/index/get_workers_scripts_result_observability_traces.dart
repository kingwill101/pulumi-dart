// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultObservabilityTraces {
  /// A list of destinations where traces will be exported to.
  final pulumi.Input<List<String>> destinations;
  /// Whether traces are enabled for the Worker.
  final pulumi.Input<bool> enabled;
  /// The sampling rate for traces. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  final pulumi.Input<double> headSamplingRate;
  /// Whether trace persistence is enabled for the Worker.
  final pulumi.Input<bool> persist;
  /// Controls how inbound trace context (traceparent/tracestate) headers on incoming requests are handled. "authenticated" (default) honors inbound trace context only when accompanied by a valid trace auth token. "accept" unconditionally accepts inbound trace context. Requires the trace propagation feature to be enabled.
  /// Available values: "authenticated", "accept".
  final pulumi.Input<String> propagationPolicy;

  /// Creates a new [GetWorkersScriptsResultObservabilityTraces].
  /// [destinations] A list of destinations where traces will be exported to.
  /// [enabled] Whether traces are enabled for the Worker.
  /// [headSamplingRate] The sampling rate for traces. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
  /// [persist] Whether trace persistence is enabled for the Worker.
  /// [propagationPolicy] Controls how inbound trace context (traceparent/tracestate) headers on incoming requests are handled. "authenticated" (default) honors inbound trace context only when accompanied by a valid trace auth token. "accept" unconditionally accepts inbound trace context. Requires the trace propagation feature to be enabled.
  const GetWorkersScriptsResultObservabilityTraces({
    required this.destinations,
    required this.enabled,
    required this.headSamplingRate,
    required this.persist,
    required this.propagationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'enabled': enabled,
      'headSamplingRate': headSamplingRate,
      'persist': persist,
      'propagationPolicy': propagationPolicy,
    };
  }

  factory GetWorkersScriptsResultObservabilityTraces.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultObservabilityTraces(
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      headSamplingRate: pulumi.Input.fromValue((map['headSamplingRate'] as num).toDouble()),
      persist: pulumi.Input.fromValue(map['persist'] as bool),
      propagationPolicy: pulumi.Input.fromValue(map['propagationPolicy'] as String),
    );
  }
}
