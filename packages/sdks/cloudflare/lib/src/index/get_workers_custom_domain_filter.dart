// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersCustomDomainFilter {
  /// Whether the configured hostname is routable for the domain.
  final pulumi.Input<bool?>? enabled;
  /// Worker environment associated with the domain.
  final pulumi.Input<String?>? environment;
  /// Hostname of the domain.
  final pulumi.Input<String?>? hostname;
  /// Whether previews are routable for the domain.
  final pulumi.Input<bool?>? previewsEnabled;
  /// Name of the Worker associated with the domain.
  final pulumi.Input<String?>? service;
  /// ID of the zone containing the domain hostname.
  final pulumi.Input<String?>? zoneId;
  /// Name of the zone containing the domain hostname.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [GetWorkersCustomDomainFilter].
  /// [enabled] Whether the configured hostname is routable for the domain.
  /// [environment] Worker environment associated with the domain.
  /// [hostname] Hostname of the domain.
  /// [previewsEnabled] Whether previews are routable for the domain.
  /// [service] Name of the Worker associated with the domain.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const GetWorkersCustomDomainFilter({
    this.enabled,
    this.environment,
    this.hostname,
    this.previewsEnabled,
    this.service,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'environment': ?environment,
      'hostname': ?hostname,
      'previewsEnabled': ?previewsEnabled,
      'service': ?service,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetWorkersCustomDomainFilter.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainFilter(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previewsEnabled: (() { final guardedValue = map['previewsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
