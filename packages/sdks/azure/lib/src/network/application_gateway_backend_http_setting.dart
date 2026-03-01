// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_http_setting_authentication_certificate.dart';
import 'application_gateway_backend_http_setting_connection_draining.dart';

class ApplicationGatewayBackendHttpSetting {
  /// The name of the affinity cookie.
  final String? affinityCookieName;
  /// One or more `authentication_certificate_backend` blocks as defined below.
  final List<ApplicationGatewayBackendHttpSettingAuthenticationCertificate>? authenticationCertificates;
  /// A `connection_draining` block as defined below.
  final ApplicationGatewayBackendHttpSettingConnectionDraining? connectionDraining;
  /// Is Cookie-Based Affinity enabled? Possible values are `Enabled` and `Disabled`.
  final String cookieBasedAffinity;
  /// Whether to use a dedicated backend connection. Defaults to `false`.
  final bool? dedicatedBackendConnectionEnabled;
  /// Host header to be sent to the backend servers. Cannot be set if `pick_host_name_from_backend_address` is set to `true`.
  final String? hostName;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The name of the Authentication Certificate.
  final String name;
  /// The Path which should be used as a prefix for all HTTP requests.
  final String? path;
  /// Whether host header should be picked from the host name of the backend server. Defaults to `false`.
  final bool? pickHostNameFromBackendAddress;
  /// The port which should be used for this Backend HTTP Settings Collection.
  final int port;
  /// The ID of the associated Probe.
  final String? probeId;
  /// The name of an associated HTTP Probe.
  final String? probeName;
  /// The Protocol which should be used. Possible values are `Http` and `Https`.
  final String protocol;
  /// The request timeout in seconds, which must be between 1 and 86400 seconds. Defaults to `30`.
  final int? requestTimeout;
  /// A list of `trusted_root_certificate` names.
  final List<String>? trustedRootCertificateNames;

  /// Creates a new [ApplicationGatewayBackendHttpSetting].
  /// [affinityCookieName] The name of the affinity cookie.
  /// [authenticationCertificates] One or more `authentication_certificate_backend` blocks as defined below.
  /// [connectionDraining] A `connection_draining` block as defined below.
  /// [cookieBasedAffinity] Is Cookie-Based Affinity enabled? Possible values are `Enabled` and `Disabled`.
  /// [dedicatedBackendConnectionEnabled] Whether to use a dedicated backend connection. Defaults to `false`.
  /// [hostName] Host header to be sent to the backend servers. Cannot be set if `pick_host_name_from_backend_address` is set to `true`.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Authentication Certificate.
  /// [path] The Path which should be used as a prefix for all HTTP requests.
  /// [pickHostNameFromBackendAddress] Whether host header should be picked from the host name of the backend server. Defaults to `false`.
  /// [port] The port which should be used for this Backend HTTP Settings Collection.
  /// [probeId] The ID of the associated Probe.
  /// [probeName] The name of an associated HTTP Probe.
  /// [protocol] The Protocol which should be used. Possible values are `Http` and `Https`.
  /// [requestTimeout] The request timeout in seconds, which must be between 1 and 86400 seconds. Defaults to `30`.
  /// [trustedRootCertificateNames] A list of `trusted_root_certificate` names.
  ApplicationGatewayBackendHttpSetting({
    this.affinityCookieName,
    this.authenticationCertificates,
    this.connectionDraining,
    required this.cookieBasedAffinity,
    this.dedicatedBackendConnectionEnabled,
    this.hostName,
    this.id,
    required this.name,
    this.path,
    this.pickHostNameFromBackendAddress,
    required this.port,
    this.probeId,
    this.probeName,
    required this.protocol,
    this.requestTimeout,
    this.trustedRootCertificateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieName': ?affinityCookieName,
      'authenticationCertificates': ?authenticationCertificates == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendHttpSettingAuthenticationCertificate, Map<String, dynamic>>(authenticationCertificates!, (value) => value.toMap()),
      'connectionDraining': ?connectionDraining == null ? null : connectionDraining!.toMap(),
      'cookieBasedAffinity': cookieBasedAffinity,
      'dedicatedBackendConnectionEnabled': ?dedicatedBackendConnectionEnabled,
      'hostName': ?hostName,
      'id': ?id,
      'name': name,
      'path': ?path,
      'pickHostNameFromBackendAddress': ?pickHostNameFromBackendAddress,
      'port': port,
      'probeId': ?probeId,
      'probeName': ?probeName,
      'protocol': protocol,
      'requestTimeout': ?requestTimeout,
      'trustedRootCertificateNames': ?trustedRootCertificateNames,
    };
  }

  factory ApplicationGatewayBackendHttpSetting.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendHttpSetting(
      affinityCookieName: map['affinityCookieName'] == null ? null : map['affinityCookieName'] as String,
      authenticationCertificates: map['authenticationCertificates'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettingAuthenticationCertificate>(map['authenticationCertificates'], (value) => ApplicationGatewayBackendHttpSettingAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())),
      connectionDraining: map['connectionDraining'] == null ? null : ApplicationGatewayBackendHttpSettingConnectionDraining.fromMap((map['connectionDraining'] as Map).cast<String, dynamic>()),
      cookieBasedAffinity: map['cookieBasedAffinity'] as String,
      dedicatedBackendConnectionEnabled: map['dedicatedBackendConnectionEnabled'] == null ? null : map['dedicatedBackendConnectionEnabled'] as bool,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      pickHostNameFromBackendAddress: map['pickHostNameFromBackendAddress'] == null ? null : map['pickHostNameFromBackendAddress'] as bool,
      port: map['port'] as int,
      probeId: map['probeId'] == null ? null : map['probeId'] as String,
      probeName: map['probeName'] == null ? null : map['probeName'] as String,
      protocol: map['protocol'] as String,
      requestTimeout: map['requestTimeout'] == null ? null : map['requestTimeout'] as int,
      trustedRootCertificateNames: map['trustedRootCertificateNames'] == null ? null : (map['trustedRootCertificateNames'] as List).cast<String>(),
    );
  }
}

