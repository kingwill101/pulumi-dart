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
  /// &gt; **Note:** `exposed_port` can only be specified when `transport` is set to `tcp`.
  final pulumi.Input<int>? exposedPort;

  /// Are connections to this Ingress from outside the Container App Environment enabled? Defaults to `false`.
  final pulumi.Input<bool>? externalEnabled;

  /// The FQDN of the ingress.
  final pulumi.Input<String>? fqdn;

  /// One or more `ip_security_restriction` blocks for IP-filtering rules as defined below.
  final pulumi.Input<List<AppIngressIpSecurityRestriction>>?
  ipSecurityRestrictions;

  /// The target port on the container for the Ingress traffic.
  final pulumi.Input<int> targetPort;

  /// One or more `traffic_weight` blocks as detailed below.
  final pulumi.Input<List<AppIngressTrafficWeight>> trafficWeights;

  /// The transport method for the Ingress. Possible values are `auto`, `http`, `http2` and `tcp`. Defaults to `auto`.
  ///
  /// &gt; **Note:** if `transport` is set to `tcp`, `exposed_port` and `target_port` should be set at the same time.
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
      'cors':
          ?pulumi.Input.mapOptionalInputValue<
            AppIngressCors,
            Map<String, dynamic>
          >(cors, (value) => value.toMap()),
      'customDomains':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppIngressCustomDomain>,
            List<Map<String, dynamic>>
          >(
            customDomains,
            (value) =>
                pulumi.Input.encodeList<
                  AppIngressCustomDomain,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'exposedPort': ?exposedPort,
      'externalEnabled': ?externalEnabled,
      'fqdn': ?fqdn,
      'ipSecurityRestrictions':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppIngressIpSecurityRestriction>,
            List<Map<String, dynamic>>
          >(
            ipSecurityRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  AppIngressIpSecurityRestriction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetPort': targetPort,
      'trafficWeights':
          pulumi.Input.mapInputValue<
            List<AppIngressTrafficWeight>,
            List<Map<String, dynamic>>
          >(
            trafficWeights,
            (value) =>
                pulumi.Input.encodeList<
                  AppIngressTrafficWeight,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transport': ?transport,
    };
  }

  factory AppIngress.fromMap(Map<String, dynamic> map) {
    return AppIngress(
      allowInsecureConnections: (() {
        final guardedValue = map['allowInsecureConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientCertificateMode: (() {
        final guardedValue = map['clientCertificateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cors: (() {
        final guardedValue = map['cors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppIngressCors.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      customDomains: (() {
        final guardedValue = map['customDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppIngressCustomDomain>(
            guardedValue,
            (value) => AppIngressCustomDomain.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      exposedPort: (() {
        final guardedValue = map['exposedPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      externalEnabled: (() {
        final guardedValue = map['externalEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fqdn: (() {
        final guardedValue = map['fqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipSecurityRestrictions: (() {
        final guardedValue = map['ipSecurityRestrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppIngressIpSecurityRestriction>(
            guardedValue,
            (value) => AppIngressIpSecurityRestriction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetPort: pulumi.Input.fromValue(map['targetPort'] as int),
      trafficWeights: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AppIngressTrafficWeight>(
          map['trafficWeights']!,
          (value) => AppIngressTrafficWeight.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      transport: (() {
        final guardedValue = map['transport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
