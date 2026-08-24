// ignore_for_file: unused_element, unnecessary_cast

import 'get_workers_custom_domain_filter.dart';

/// Result data returned by getWorkersCustomDomain.
class GetWorkersCustomDomainResult {
  /// Identifier.
  final String? accountId;
  /// ID of the TLS certificate issued for the domain.
  final String? certId;
  /// ID of the domain.
  final String? domainId;
  /// Worker environment associated with the domain.
  final String? environment;
  final GetWorkersCustomDomainFilter? filter;
  /// Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  final String? hostname;
  /// ID of the domain.
  final String? id;
  /// Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  final String? service;
  /// ID of the zone containing the domain hostname.
  final String? zoneId;
  /// Name of the zone containing the domain hostname.
  final String? zoneName;

  /// Creates a new [GetWorkersCustomDomainResult].
  /// [accountId] Identifier.
  /// [certId] ID of the TLS certificate issued for the domain.
  /// [domainId] ID of the domain.
  /// [environment] Worker environment associated with the domain.
  /// [filter] Optional.
  /// [hostname] Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  /// [id] ID of the domain.
  /// [service] Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const GetWorkersCustomDomainResult({
    this.accountId,
    this.certId,
    this.domainId,
    this.environment,
    this.filter,
    this.hostname,
    this.id,
    this.service,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'certId': ?certId,
      'domainId': ?domainId,
      'environment': ?environment,
      'filter': ?filter?.toMap(),
      'hostname': ?hostname,
      'id': ?id,
      'service': ?service,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetWorkersCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetWorkersCustomDomainFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
