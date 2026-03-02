// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_ingress_cors.dart';
import 'app_ingress_custom_domain.dart';
import 'app_ingress_ip_security_restriction.dart';
import 'app_ingress_traffic_weight.dart';

class AppIngress {
  /// Should this ingress allow insecure connections?
  final pulumi.Input<bool>? allowInsecureConnections;
  /// The client certificate mode for the Ingress. Possible values are `require`, `accept`, and `ignore`.
  final pulumi.Input<String>? clientCertificateMode;
  /// A `cors` block as defined below.
  final pulumi.Input<AppIngressCors>? cors;
  /// One or more `custom_domain` block as detailed below.
  final pulumi.Input<List<AppIngressCustomDomain>>? customDomains;
  /// The exposed port on the container for the Ingress traffic.
  ///
  /// > **Note:** `exposed_port` can only be specified when `transport` is set to `tcp`.
  final pulumi.Input<int>? exposedPort;
  /// Are connections to this Ingress from outside the Container App Environment enabled? Defaults to `false`.
  final pulumi.Input<bool>? externalEnabled;
  /// The FQDN of the ingress.
  final pulumi.Input<String>? fqdn;
  /// One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  final pulumi.Input<List<AppIngressIpSecurityRestriction>>? ipSecurityRestrictions;
  /// The target port on the container for the Ingress traffic.
  final pulumi.Input<int> targetPort;
  /// One or more `traffic_weight` blocks as detailed below.
  final pulumi.Input<List<AppIngressTrafficWeight>> trafficWeights;
  /// The transport method for the Ingress. Possible values are `auto`, `http`, `http2` and `tcp`. Defaults to `auto`.
  ///
  /// > **Note:** if `transport` is set to `tcp`, `exposed_port` and `target_port` should be set at the same time.
  final pulumi.Input<String>? transport;

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
      'cors': ?pulumi.Input.mapOptionalInputValue<AppIngressCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<AppIngressCustomDomain>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<AppIngressCustomDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exposedPort': ?exposedPort,
      'externalEnabled': ?externalEnabled,
      'fqdn': ?fqdn,
      'ipSecurityRestrictions': ?pulumi.Input.mapOptionalInputValue<List<AppIngressIpSecurityRestriction>, List<Map<String, dynamic>>>(ipSecurityRestrictions, (value) => pulumi.Input.encodeList<AppIngressIpSecurityRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPort': targetPort,
      'trafficWeights': pulumi.Input.mapInputValue<List<AppIngressTrafficWeight>, List<Map<String, dynamic>>>(trafficWeights, (value) => pulumi.Input.encodeList<AppIngressTrafficWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transport': ?transport,
    };
  }

  factory AppIngress.fromMap(Map<String, dynamic> map) {
    return AppIngress(
      allowInsecureConnections: map['allowInsecureConnections'] == null ? null : (map['allowInsecureConnections']! as bool).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode']! as String).input(),
      cors: map['cors'] == null ? null : (AppIngressCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      customDomains: map['customDomains'] == null ? null : (pulumi.Input.decodeList<AppIngressCustomDomain>(map['customDomains']!, (value) => AppIngressCustomDomain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      exposedPort: map['exposedPort'] == null ? null : (map['exposedPort']! as int).input(),
      externalEnabled: map['externalEnabled'] == null ? null : (map['externalEnabled']! as bool).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      ipSecurityRestrictions: map['ipSecurityRestrictions'] == null ? null : (pulumi.Input.decodeList<AppIngressIpSecurityRestriction>(map['ipSecurityRestrictions']!, (value) => AppIngressIpSecurityRestriction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetPort: (map['targetPort'] as int).input(),
      trafficWeights: (pulumi.Input.decodeList<AppIngressTrafficWeight>(map['trafficWeights'], (value) => AppIngressTrafficWeight.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transport: map['transport'] == null ? null : (map['transport']! as String).input(),
    );
  }
}

