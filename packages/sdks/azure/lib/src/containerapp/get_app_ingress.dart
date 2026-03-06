// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_ingress_cor.dart';
import 'get_app_ingress_custom_domain.dart';
import 'get_app_ingress_ip_security_restriction.dart';
import 'get_app_ingress_traffic_weight.dart';

class GetAppIngress {
  /// Should this ingress allow insecure connections?
  final pulumi.Input<bool> allowInsecureConnections;
  /// The client certificate mode for the Ingress.
  final pulumi.Input<String> clientCertificateMode;
  /// A `cors` block as detailed below.
  final pulumi.Input<List<GetAppIngressCor>> cors;
  /// One or more `custom_domain` block as detailed below.
  final pulumi.Input<List<GetAppIngressCustomDomain>> customDomains;
  /// The exposed port on the container for the Ingress traffic.
  final pulumi.Input<int> exposedPort;
  /// Is this an external Ingress.
  final pulumi.Input<bool> externalEnabled;
  /// The FQDN of the ingress.
  final pulumi.Input<String> fqdn;
  /// One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  final pulumi.Input<List<GetAppIngressIpSecurityRestriction>> ipSecurityRestrictions;
  /// The target port on the container for the Ingress traffic.
  final pulumi.Input<int> targetPort;
  /// A `traffic_weight` block as detailed below.
  final pulumi.Input<List<GetAppIngressTrafficWeight>> trafficWeights;
  /// The transport method for the Ingress.
  final pulumi.Input<String> transport;

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
  const GetAppIngress({
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
      'cors': pulumi.Input.mapInputValue<List<GetAppIngressCor>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<GetAppIngressCor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomains': pulumi.Input.mapInputValue<List<GetAppIngressCustomDomain>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<GetAppIngressCustomDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exposedPort': exposedPort,
      'externalEnabled': externalEnabled,
      'fqdn': fqdn,
      'ipSecurityRestrictions': pulumi.Input.mapInputValue<List<GetAppIngressIpSecurityRestriction>, List<Map<String, dynamic>>>(ipSecurityRestrictions, (value) => pulumi.Input.encodeList<GetAppIngressIpSecurityRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPort': targetPort,
      'trafficWeights': pulumi.Input.mapInputValue<List<GetAppIngressTrafficWeight>, List<Map<String, dynamic>>>(trafficWeights, (value) => pulumi.Input.encodeList<GetAppIngressTrafficWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transport': transport,
    };
  }

  factory GetAppIngress.fromMap(Map<String, dynamic> map) {
    return GetAppIngress(
      allowInsecureConnections: pulumi.Input.fromValue(map['allowInsecureConnections'] as bool),
      clientCertificateMode: pulumi.Input.fromValue(map['clientCertificateMode'] as String),
      cors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppIngressCor>(map['cors']!, (value) => GetAppIngressCor.fromMap((value as Map).cast<String, dynamic>()))),
      customDomains: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppIngressCustomDomain>(map['customDomains']!, (value) => GetAppIngressCustomDomain.fromMap((value as Map).cast<String, dynamic>()))),
      exposedPort: pulumi.Input.fromValue(map['exposedPort'] as int),
      externalEnabled: pulumi.Input.fromValue(map['externalEnabled'] as bool),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      ipSecurityRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppIngressIpSecurityRestriction>(map['ipSecurityRestrictions']!, (value) => GetAppIngressIpSecurityRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      targetPort: pulumi.Input.fromValue(map['targetPort'] as int),
      trafficWeights: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAppIngressTrafficWeight>(map['trafficWeights']!, (value) => GetAppIngressTrafficWeight.fromMap((value as Map).cast<String, dynamic>()))),
      transport: pulumi.Input.fromValue(map['transport'] as String),
    );
  }
}

