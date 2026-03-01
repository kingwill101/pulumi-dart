// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_ingress_cor.dart';
import 'get_app_ingress_custom_domain.dart';
import 'get_app_ingress_ip_security_restriction.dart';
import 'get_app_ingress_traffic_weight.dart';

class GetAppIngress {
  /// Should this ingress allow insecure connections?
  final bool allowInsecureConnections;
  /// The client certificate mode for the Ingress.
  final String clientCertificateMode;
  /// A `cors` block as detailed below.
  final List<GetAppIngressCor> cors;
  /// One or more `custom_domain` block as detailed below.
  final List<GetAppIngressCustomDomain> customDomains;
  /// The exposed port on the container for the Ingress traffic.
  final int exposedPort;
  /// Is this an external Ingress.
  final bool externalEnabled;
  /// The FQDN of the ingress.
  final String fqdn;
  /// One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  final List<GetAppIngressIpSecurityRestriction> ipSecurityRestrictions;
  /// The target port on the container for the Ingress traffic.
  final int targetPort;
  /// A `traffic_weight` block as detailed below.
  final List<GetAppIngressTrafficWeight> trafficWeights;
  /// The transport method for the Ingress.
  final String transport;

  /// Creates a new [GetAppIngress].
  /// [allowInsecureConnections] Should this ingress allow insecure connections?
  /// [clientCertificateMode] The client certificate mode for the Ingress.
  /// [cors] A `cors` block as detailed below.
  /// [customDomains] One or more `custom_domain` block as detailed below.
  /// [exposedPort] The exposed port on the container for the Ingress traffic.
  /// [externalEnabled] Is this an external Ingress.
  /// [fqdn] The FQDN of the ingress.
  /// [ipSecurityRestrictions] One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  /// [targetPort] The target port on the container for the Ingress traffic.
  /// [trafficWeights] A `traffic_weight` block as detailed below.
  /// [transport] The transport method for the Ingress.
  GetAppIngress({
    required this.allowInsecureConnections,
    required this.clientCertificateMode,
    required this.cors,
    required this.customDomains,
    required this.exposedPort,
    required this.externalEnabled,
    required this.fqdn,
    required this.ipSecurityRestrictions,
    required this.targetPort,
    required this.trafficWeights,
    required this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecureConnections': allowInsecureConnections,
      'clientCertificateMode': clientCertificateMode,
      'cors': pulumi.Input.encodeList<GetAppIngressCor, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'customDomains': pulumi.Input.encodeList<GetAppIngressCustomDomain, Map<String, dynamic>>(customDomains, (value) => value.toMap()),
      'exposedPort': exposedPort,
      'externalEnabled': externalEnabled,
      'fqdn': fqdn,
      'ipSecurityRestrictions': pulumi.Input.encodeList<GetAppIngressIpSecurityRestriction, Map<String, dynamic>>(ipSecurityRestrictions, (value) => value.toMap()),
      'targetPort': targetPort,
      'trafficWeights': pulumi.Input.encodeList<GetAppIngressTrafficWeight, Map<String, dynamic>>(trafficWeights, (value) => value.toMap()),
      'transport': transport,
    };
  }

  factory GetAppIngress.fromMap(Map<String, dynamic> map) {
    return GetAppIngress(
      allowInsecureConnections: map['allowInsecureConnections'] as bool,
      clientCertificateMode: map['clientCertificateMode'] as String,
      cors: pulumi.Input.decodeList<GetAppIngressCor>(map['cors'], (value) => GetAppIngressCor.fromMap((value as Map).cast<String, dynamic>())),
      customDomains: pulumi.Input.decodeList<GetAppIngressCustomDomain>(map['customDomains'], (value) => GetAppIngressCustomDomain.fromMap((value as Map).cast<String, dynamic>())),
      exposedPort: map['exposedPort'] as int,
      externalEnabled: map['externalEnabled'] as bool,
      fqdn: map['fqdn'] as String,
      ipSecurityRestrictions: pulumi.Input.decodeList<GetAppIngressIpSecurityRestriction>(map['ipSecurityRestrictions'], (value) => GetAppIngressIpSecurityRestriction.fromMap((value as Map).cast<String, dynamic>())),
      targetPort: map['targetPort'] as int,
      trafficWeights: pulumi.Input.decodeList<GetAppIngressTrafficWeight>(map['trafficWeights'], (value) => GetAppIngressTrafficWeight.fromMap((value as Map).cast<String, dynamic>())),
      transport: map['transport'] as String,
    );
  }
}

