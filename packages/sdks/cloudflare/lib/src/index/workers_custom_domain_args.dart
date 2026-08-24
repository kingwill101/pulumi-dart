// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_workers_custom_domain_workers_custom_domain_args_doc}
/// The set of arguments for WorkersCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_index_workers_custom_domain_workers_custom_domain_args_doc}
class WorkersCustomDomainArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Worker environment associated with the domain.
  final pulumi.Input<String?>? environment;
  /// Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  final pulumi.Input<String> hostname;
  /// Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  final pulumi.Input<String> service;
  /// ID of the zone containing the domain hostname.
  final pulumi.Input<String?>? zoneId;
  /// Name of the zone containing the domain hostname.
  final pulumi.Input<String?>? zoneName;

  /// Creates a new [WorkersCustomDomainArgs].
  /// [accountId] Identifier.
  /// [environment] Worker environment associated with the domain.
  /// [hostname] Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  /// [service] Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const WorkersCustomDomainArgs({
    required this.accountId,
    this.environment,
    required this.hostname,
    required this.service,
    this.zoneId,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'environment': ?environment,
      'hostname': hostname,
      'service': service,
      'zoneId': ?zoneId,
      'zoneName': ?zoneName,
    };
  }

  factory WorkersCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return WorkersCustomDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneName: (() { final guardedValue = map['zoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
