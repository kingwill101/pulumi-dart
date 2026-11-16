// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersCustomDomainsResult {
  /// ID of the TLS certificate issued for the domain.
  final pulumi.Input<String> certId;
  /// Whether the configured hostname is routable for the domain. If disabled, then requests to the configured hostname will not be routed to the configured Worker. If disabled, then preview routing must be enabled, and only subdomains of the configured hostname will be routable.
  final pulumi.Input<bool> enabled;
  /// Worker environment associated with the domain.
  final pulumi.Input<String> environment;
  /// Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  final pulumi.Input<String> hostname;
  /// Immutable ID of the domain.
  final pulumi.Input<String> id;
  /// Whether previews are routable for the domain. If enabled, previews will be routable as subdomains of the configured hostname. For example, if the configured hostname is `app.example.com`, then requests to `my-feature.app.example.com` will be routed to the preview with slug `my-feature`, if such a preview exists. If preview routing is disabled, then hostname routing must be enabled.
  final pulumi.Input<bool> previewsEnabled;
  /// Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  final pulumi.Input<String> service;
  /// ID of the zone containing the domain hostname.
  final pulumi.Input<String> zoneId;
  /// Name of the zone containing the domain hostname.
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetWorkersCustomDomainsResult].
  /// [certId] ID of the TLS certificate issued for the domain.
  /// [enabled] Whether the configured hostname is routable for the domain. If disabled, then requests to the configured hostname will not be routed to the configured Worker. If disabled, then preview routing must be enabled, and only subdomains of the configured hostname will be routable.
  /// [environment] Worker environment associated with the domain.
  /// [hostname] Hostname of the domain. Can be either the zone apex or a subdomain of the zone. Requests to this hostname will be routed to the configured Worker.
  /// [id] Immutable ID of the domain.
  /// [previewsEnabled] Whether previews are routable for the domain. If enabled, previews will be routable as subdomains of the configured hostname. For example, if the configured hostname is `app.example.com`, then requests to `my-feature.app.example.com` will be routed to the preview with slug `my-feature`, if such a preview exists. If preview routing is disabled, then hostname routing must be enabled.
  /// [service] Name of the Worker associated with the domain. Requests to the configured hostname will be routed to this Worker.
  /// [zoneId] ID of the zone containing the domain hostname.
  /// [zoneName] Name of the zone containing the domain hostname.
  const GetWorkersCustomDomainsResult({
    required this.certId,
    required this.enabled,
    required this.environment,
    required this.hostname,
    required this.id,
    required this.previewsEnabled,
    required this.service,
    required this.zoneId,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': certId,
      'enabled': enabled,
      'environment': environment,
      'hostname': hostname,
      'id': id,
      'previewsEnabled': previewsEnabled,
      'service': service,
      'zoneId': zoneId,
      'zoneName': zoneName,
    };
  }

  factory GetWorkersCustomDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainsResult(
      certId: pulumi.Input.fromValue(map['certId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      previewsEnabled: pulumi.Input.fromValue(map['previewsEnabled'] as bool),
      service: pulumi.Input.fromValue(map['service'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
