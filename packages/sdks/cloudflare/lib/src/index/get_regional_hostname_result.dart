// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionalHostname.
class GetRegionalHostnameResult {
  /// When the regional hostname was created
  final String? createdOn;
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final String? hostname;
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final String? id;
  /// Identifying key for the region
  final String? regionKey;
  /// Configure which routing method to use for the regional hostname
  final String? routing;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetRegionalHostnameResult].
  /// [createdOn] When the regional hostname was created
  /// [hostname] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [id] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [regionKey] Identifying key for the region
  /// [routing] Configure which routing method to use for the regional hostname
  /// [zoneId] Identifier.
  const GetRegionalHostnameResult({
    this.createdOn,
    this.hostname,
    this.id,
    this.regionKey,
    this.routing,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'hostname': ?hostname,
      'id': ?id,
      'regionKey': ?regionKey,
      'routing': ?routing,
      'zoneId': ?zoneId,
    };
  }

  factory GetRegionalHostnameResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalHostnameResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionKey: (() { final guardedValue = map['regionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
