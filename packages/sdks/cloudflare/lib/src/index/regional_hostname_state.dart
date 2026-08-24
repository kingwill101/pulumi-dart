// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionalHostname resources.
class RegionalHostnameState {
  /// When the regional hostname was created
  final pulumi.Input<String?>? createdOn;
  /// DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  final pulumi.Input<String?>? hostname;
  /// Identifying key for the region
  final pulumi.Input<String?>? regionKey;
  /// Configure which routing method to use for the regional hostname
  final pulumi.Input<String?>? routing;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RegionalHostnameState].
  /// [createdOn] When the regional hostname was created
  /// [hostname] DNS hostname to be regionalized, must be a subdomain of the zone. Wildcards are supported for one level, e.g `*.example.com`
  /// [regionKey] Identifying key for the region
  /// [routing] Configure which routing method to use for the regional hostname
  /// [zoneId] Identifier.
  const RegionalHostnameState({
    this.createdOn,
    this.hostname,
    this.regionKey,
    this.routing,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'hostname': ?hostname,
      'regionKey': ?regionKey,
      'routing': ?routing,
      'zoneId': ?zoneId,
    };
  }

  factory RegionalHostnameState.fromMap(Map<String, dynamic> map) {
    return RegionalHostnameState(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionKey: (() { final guardedValue = map['regionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
