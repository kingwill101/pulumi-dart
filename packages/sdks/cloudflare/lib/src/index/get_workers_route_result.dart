// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkersRoute.
class GetWorkersRouteResult {
  /// Identifier.
  final String? id;
  /// Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  final String? pattern;
  /// Identifier.
  final String? routeId;
  /// Name of the script to run if the route matches.
  final String? script;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetWorkersRouteResult].
  /// [id] Identifier.
  /// [pattern] Pattern to match incoming requests against. [Learn more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
  /// [routeId] Identifier.
  /// [script] Name of the script to run if the route matches.
  /// [zoneId] Identifier.
  const GetWorkersRouteResult({
    this.id,
    this.pattern,
    this.routeId,
    this.script,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'pattern': ?pattern,
      'routeId': ?routeId,
      'script': ?script,
      'zoneId': ?zoneId,
    };
  }

  factory GetWorkersRouteResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersRouteResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
