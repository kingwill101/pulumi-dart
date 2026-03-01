// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_ingress_cors.dart';
import 'app_ingress_custom_domain.dart';
import 'app_ingress_ip_security_restriction.dart';
import 'app_ingress_traffic_weight.dart';

class AppIngress {
  /// Should this ingress allow insecure connections?
  final bool? allowInsecureConnections;
  /// The client certificate mode for the Ingress. Possible values are `require`, `accept`, and `ignore`.
  final String? clientCertificateMode;
  /// A `cors` block as defined below.
  final AppIngressCors? cors;
  /// One or more `custom_domain` block as detailed below.
  final List<AppIngressCustomDomain>? customDomains;
  /// The exposed port on the container for the Ingress traffic.
  ///
  /// > **Note:** `exposed_port` can only be specified when `transport` is set to `tcp`.
  final int? exposedPort;
  /// Are connections to this Ingress from outside the Container App Environment enabled? Defaults to `false`.
  final bool? externalEnabled;
  /// The FQDN of the ingress.
  final String? fqdn;
  /// One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  final List<AppIngressIpSecurityRestriction>? ipSecurityRestrictions;
  /// The target port on the container for the Ingress traffic.
  final int targetPort;
  /// One or more `traffic_weight` blocks as detailed below.
  final List<AppIngressTrafficWeight> trafficWeights;
  /// The transport method for the Ingress. Possible values are `auto`, `http`, `http2` and `tcp`. Defaults to `auto`.
  ///
  /// > **Note:** if `transport` is set to `tcp`, `exposed_port` and `target_port` should be set at the same time.
  final String? transport;

  /// Creates a new [AppIngress].
  /// [allowInsecureConnections] Should this ingress allow insecure connections?
  /// [clientCertificateMode] The client certificate mode for the Ingress. Possible values are `require`, `accept`, and `ignore`.
  /// [cors] A `cors` block as defined below.
  /// [customDomains] One or more `custom_domain` block as detailed below.
  /// [exposedPort] The exposed port on the container for the Ingress traffic.
  /// [externalEnabled] Are connections to this Ingress from outside the Container App Environment enabled? Defaults to `false`.
  /// [fqdn] The FQDN of the ingress.
  /// [ipSecurityRestrictions] One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  /// [targetPort] The target port on the container for the Ingress traffic.
  /// [trafficWeights] One or more `traffic_weight` blocks as detailed below.
  /// [transport] The transport method for the Ingress. Possible values are `auto`, `http`, `http2` and `tcp`. Defaults to `auto`.
  AppIngress({
    this.allowInsecureConnections,
    this.clientCertificateMode,
    this.cors,
    this.customDomains,
    this.exposedPort,
    this.externalEnabled,
    this.fqdn,
    this.ipSecurityRestrictions,
    required this.targetPort,
    required this.trafficWeights,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecureConnections': ?allowInsecureConnections,
      'clientCertificateMode': ?clientCertificateMode,
      'cors': ?cors == null ? null : cors!.toMap(),
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<AppIngressCustomDomain, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
      'exposedPort': ?exposedPort,
      'externalEnabled': ?externalEnabled,
      'fqdn': ?fqdn,
      'ipSecurityRestrictions': ?ipSecurityRestrictions == null ? null : pulumi.Input.encodeList<AppIngressIpSecurityRestriction, Map<String, dynamic>>(ipSecurityRestrictions!, (value) => value.toMap()),
      'targetPort': targetPort,
      'trafficWeights': pulumi.Input.encodeList<AppIngressTrafficWeight, Map<String, dynamic>>(trafficWeights, (value) => value.toMap()),
      'transport': ?transport,
    };
  }

  factory AppIngress.fromMap(Map<String, dynamic> map) {
    return AppIngress(
      allowInsecureConnections: map['allowInsecureConnections'] == null ? null : map['allowInsecureConnections'] as bool,
      clientCertificateMode: map['clientCertificateMode'] == null ? null : map['clientCertificateMode'] as String,
      cors: map['cors'] == null ? null : AppIngressCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<AppIngressCustomDomain>(map['customDomains'], (value) => AppIngressCustomDomain.fromMap((value as Map).cast<String, dynamic>())),
      exposedPort: map['exposedPort'] == null ? null : map['exposedPort'] as int,
      externalEnabled: map['externalEnabled'] == null ? null : map['externalEnabled'] as bool,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      ipSecurityRestrictions: map['ipSecurityRestrictions'] == null ? null : pulumi.Input.decodeList<AppIngressIpSecurityRestriction>(map['ipSecurityRestrictions'], (value) => AppIngressIpSecurityRestriction.fromMap((value as Map).cast<String, dynamic>())),
      targetPort: map['targetPort'] as int,
      trafficWeights: pulumi.Input.decodeList<AppIngressTrafficWeight>(map['trafficWeights'], (value) => AppIngressTrafficWeight.fromMap((value as Map).cast<String, dynamic>())),
      transport: map['transport'] == null ? null : map['transport'] as String,
    );
  }
}

