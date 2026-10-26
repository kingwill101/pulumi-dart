// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneTracing resources.
class ZoneTracingState {
  /// Up to 100 OpenTelemetry destination identifiers that receive traces.
  final pulumi.Input<List<String>?>? destinations;
  /// Whether Cloudflare Traces is enabled for the zone.
  final pulumi.Input<bool?>? enabled;
  /// Whether trace context is sent externally or across a zone boundary.
  final pulumi.Input<bool?>? forwardContext;
  /// Whether traces are persisted in Cloudflare.
  final pulumi.Input<bool?>? persist;
  /// When inbound trace context may be continued. Authenticated propagation is not supported yet.
  /// Available values: "accept", "authenticated", "reject".
  final pulumi.Input<String?>? propagationPolicy;
  /// The ratio of requests sampled for tracing, from 0 to 1.
  final pulumi.Input<double?>? samplingRatio;
  /// Specify the zone ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneTracingState].
  /// [destinations] Up to 100 OpenTelemetry destination identifiers that receive traces.
  /// [enabled] Whether Cloudflare Traces is enabled for the zone.
  /// [forwardContext] Whether trace context is sent externally or across a zone boundary.
  /// [persist] Whether traces are persisted in Cloudflare.
  /// [propagationPolicy] When inbound trace context may be continued. Authenticated propagation is not supported yet.
  /// [samplingRatio] The ratio of requests sampled for tracing, from 0 to 1.
  /// [zoneId] Specify the zone ID.
  const ZoneTracingState({
    this.destinations,
    this.enabled,
    this.forwardContext,
    this.persist,
    this.propagationPolicy,
    this.samplingRatio,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'enabled': ?enabled,
      'forwardContext': ?forwardContext,
      'persist': ?persist,
      'propagationPolicy': ?propagationPolicy,
      'samplingRatio': ?samplingRatio,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneTracingState.fromMap(Map<String, dynamic> map) {
    return ZoneTracingState(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardContext: (() { final guardedValue = map['forwardContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      persist: (() { final guardedValue = map['persist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      propagationPolicy: (() { final guardedValue = map['propagationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplingRatio: (() { final guardedValue = map['samplingRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
