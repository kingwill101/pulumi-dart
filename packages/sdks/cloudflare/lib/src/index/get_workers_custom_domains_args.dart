// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_custom_domains_get_workers_custom_domains_args_doc}
/// Arguments for getWorkersCustomDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_custom_domains_get_workers_custom_domains_args_doc}
class GetWorkersCustomDomainsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Worker environment associated with the domain.
  final pulumi.Input<String?>? environment;
  /// Hostname of the domain.
  final pulumi.Input<String?>? hostname;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Name of the Worker associated with the domain.
  final pulumi.Input<String?>? service;
  /// ID of the zone containing the domain hostname.
  final pulumi.Input<String?>? zoneId;
  /// Name of the zone containing the domain hostname.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [GetWorkersCustomDomainsArgs].
  /// [accountId] Identifier.
  /// [environment] Worker environment associated with the domain.
  /// [hostname] Hostname of the domain.
  /// [maxItems] Max items to fetch, default: 1000
  /// [service] Name of the Worker associated with the domain.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const GetWorkersCustomDomainsArgs({
    this.accountId,
    this.environment,
    this.hostname,
    this.maxItems,
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
      'service': ?service,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory GetWorkersCustomDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
