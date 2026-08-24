// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersCustomDomainsResult {
  /// ID of the TLS certificate issued for the domain.
  final pulumi.Input<String> certId;
  /// Worker environment associated with the domain.
  final pulumi.Input<String> environment;
  /// Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  final pulumi.Input<String> hostname;
  /// Immutable ID of the domain.
  final pulumi.Input<String> id;
  /// Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  final pulumi.Input<String> service;
  /// ID of the zone containing the domain hostname.
  final pulumi.Input<String> zoneId;
  /// Name of the zone containing the domain hostname.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetWorkersCustomDomainsResult].
  /// [certId] ID of the TLS certificate issued for the domain.
  /// [environment] Worker environment associated with the domain.
  /// [hostname] Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  /// [id] Immutable ID of the domain.
  /// [service] Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const GetWorkersCustomDomainsResult({
    required this.certId,
    required this.environment,
    required this.hostname,
    required this.id,
    required this.service,
    required this.zoneId,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': certId,
      'environment': environment,
      'hostname': hostname,
      'id': id,
      'service': service,
      'zoneId': zoneId,
      'zoneName': zoneName,
    };
  }

  factory GetWorkersCustomDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainsResult(
      certId: pulumi.Input.fromValue(map['certId'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
