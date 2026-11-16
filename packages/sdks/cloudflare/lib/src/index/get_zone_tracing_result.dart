// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneTracing.
class GetZoneTracingResult {
  /// Up to 100 OpenTelemetry destination identifiers that receive traces.
  final List<String>? destinations;
  /// Whether Cloudflare Traces is enabled for the zone.
  final bool? enabled;
  /// Whether trace context is sent externally or across a zone boundary.
  final bool? forwardContext;
  /// Specify the zone ID.
  final String? id;
  /// Whether traces are persisted in Cloudflare.
  final bool? persist;
  /// When inbound trace context may be continued. Authenticated propagation is not supported yet.
  /// Available values: "accept", "authenticated", "reject".
  final String? propagationPolicy;
  /// The ratio of requests sampled for tracing, from 0 to 1.
  final double? samplingRatio;
  /// Specify the zone ID.
  final String? zoneId;

  /// Creates a new [GetZoneTracingResult].
  /// [destinations] Up to 100 OpenTelemetry destination identifiers that receive traces.
  /// [enabled] Whether Cloudflare Traces is enabled for the zone.
  /// [forwardContext] Whether trace context is sent externally or across a zone boundary.
  /// [id] Specify the zone ID.
  /// [persist] Whether traces are persisted in Cloudflare.
  /// [propagationPolicy] When inbound trace context may be continued. Authenticated propagation is not supported yet.
  /// [samplingRatio] The ratio of requests sampled for tracing, from 0 to 1.
  /// [zoneId] Specify the zone ID.
  const GetZoneTracingResult({
    this.destinations,
    this.enabled,
    this.forwardContext,
    this.id,
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
      'id': ?id,
      'persist': ?persist,
      'propagationPolicy': ?propagationPolicy,
      'samplingRatio': ?samplingRatio,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneTracingResult.fromMap(Map<String, dynamic> map) {
    return GetZoneTracingResult(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forwardContext: (() { final guardedValue = map['forwardContext']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      persist: (() { final guardedValue = map['persist']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      propagationPolicy: (() { final guardedValue = map['propagationPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samplingRatio: (() { final guardedValue = map['samplingRatio']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
