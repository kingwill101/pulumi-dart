// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_custom_domains_result.dart';

/// Result data returned by getWorkersCustomDomains.
class GetWorkersCustomDomainsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Worker environment associated with the domain.
  final String? environment;
  /// Hostname of the domain.
  final String? hostname;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetWorkersCustomDomainsResult>? results;
  /// Name of the Worker associated with the domain.
  final String? service;
  /// ID of the zone containing the domain hostname.
  final String? zoneId;
  /// Name of the zone containing the domain hostname.
  final String? zoneName;

  /// Creates a new [GetWorkersCustomDomainsInvokeResult].
  /// [accountId] Identifier.
  /// [environment] Worker environment associated with the domain.
  /// [hostname] Hostname of the domain.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [service] Name of the Worker associated with the domain.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const GetWorkersCustomDomainsInvokeResult({
    this.accountId,
    this.environment,
    this.hostname,
    this.maxItems,
    this.results,
    this.service,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'environment': ?environment,
      'hostname': ?hostname,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkersCustomDomainsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'service': ?service,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetWorkersCustomDomainsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkersCustomDomainsResult>(guardedValue, (value) => GetWorkersCustomDomainsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
