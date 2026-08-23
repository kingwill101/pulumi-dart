// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_backend_http_setting_authentication_certificate.dart';
import 'get_application_gateway_backend_http_setting_connection_draining.dart';

class GetApplicationGatewayBackendHttpSetting {
  /// The name of the affinity cookie.
  final pulumi.Input<String> affinityCookieName;
  /// One or more `authenticationCertificate` blocks as defined below.
  final pulumi.Input<List<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate>> authenticationCertificates;
  /// Whether certificate chain and expiry validation on the backend HTTPS servers is enabled.
  final pulumi.Input<bool> certificateChainValidationEnabled;
  /// A `connectionDraining` block as defined below.
  final pulumi.Input<List<GetApplicationGatewayBackendHttpSettingConnectionDraining>> connectionDrainings;
  /// Whether Cookie-Based Affinity is enabled.
  final pulumi.Input<String> cookieBasedAffinity;
  /// Whether a dedicated backend connection is used.
  final pulumi.Input<bool> dedicatedBackendConnectionEnabled;
  /// The Hostname which is used for this HTTP Listener.
  final pulumi.Input<String> hostName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The URL path to rewrite.
  final pulumi.Input<String> path;
  /// Whether the host header is picked from the host name of the backend server.
  final pulumi.Input<bool> pickHostNameFromBackendAddress;
  /// Custom port which is used for probing the backend servers.
  final pulumi.Input<int> port;
  /// The ID of the associated Probe.
  final pulumi.Input<String> probeId;
  /// The name of the associated Probe.
  final pulumi.Input<String> probeName;
  /// The Protocol used for this Probe.
  final pulumi.Input<String> protocol;
  /// The request timeout in seconds.
  final pulumi.Input<int> requestTimeout;
  /// The Server Name Indication (SNI) hostname sent to the backend servers.
  final pulumi.Input<String> sniName;
  /// Whether Server Name Indication (SNI) validation on the backend HTTPS servers is enabled.
  final pulumi.Input<bool> sniValidationEnabled;
  /// A list of `trustedRootCertificate` names.
  final pulumi.Input<List<String>> trustedRootCertificateNames;

  /// Creates a new [GetApplicationGatewayBackendHttpSetting].
  /// [affinityCookieName] The name of the affinity cookie.
  /// [authenticationCertificates] One or more `authenticationCertificate` blocks as defined below.
  /// [certificateChainValidationEnabled] Whether certificate chain and expiry validation on the backend HTTPS servers is enabled.
  /// [connectionDrainings] A `connectionDraining` block as defined below.
  /// [cookieBasedAffinity] Whether Cookie-Based Affinity is enabled.
  /// [dedicatedBackendConnectionEnabled] Whether a dedicated backend connection is used.
  /// [hostName] The Hostname which is used for this HTTP Listener.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [path] The URL path to rewrite.
  /// [pickHostNameFromBackendAddress] Whether the host header is picked from the host name of the backend server.
  /// [port] Custom port which is used for probing the backend servers.
  /// [probeId] The ID of the associated Probe.
  /// [probeName] The name of the associated Probe.
  /// [protocol] The Protocol used for this Probe.
  /// [requestTimeout] The request timeout in seconds.
  /// [sniName] The Server Name Indication (SNI) hostname sent to the backend servers.
  /// [sniValidationEnabled] Whether Server Name Indication (SNI) validation on the backend HTTPS servers is enabled.
  /// [trustedRootCertificateNames] A list of `trustedRootCertificate` names.
  const GetApplicationGatewayBackendHttpSetting({
    required this.affinityCookieName,
    required this.authenticationCertificates,
    required this.certificateChainValidationEnabled,
    required this.connectionDrainings,
    required this.cookieBasedAffinity,
    required this.dedicatedBackendConnectionEnabled,
    required this.hostName,
    required this.id,
    required this.name,
    required this.path,
    required this.pickHostNameFromBackendAddress,
    required this.port,
    required this.probeId,
    required this.probeName,
    required this.protocol,
    required this.requestTimeout,
    required this.sniName,
    required this.sniValidationEnabled,
    required this.trustedRootCertificateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieName': affinityCookieName,
      'authenticationCertificates': pulumi.Input.mapInputValue<List<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate>, List<Map<String, dynamic>>>(authenticationCertificates, (value) => pulumi.Input.encodeList<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateChainValidationEnabled': certificateChainValidationEnabled,
      'connectionDrainings': pulumi.Input.mapInputValue<List<GetApplicationGatewayBackendHttpSettingConnectionDraining>, List<Map<String, dynamic>>>(connectionDrainings, (value) => pulumi.Input.encodeList<GetApplicationGatewayBackendHttpSettingConnectionDraining, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cookieBasedAffinity': cookieBasedAffinity,
      'dedicatedBackendConnectionEnabled': dedicatedBackendConnectionEnabled,
      'hostName': hostName,
      'id': id,
      'name': name,
      'path': path,
      'pickHostNameFromBackendAddress': pickHostNameFromBackendAddress,
      'port': port,
      'probeId': probeId,
      'probeName': probeName,
      'protocol': protocol,
      'requestTimeout': requestTimeout,
      'sniName': sniName,
      'sniValidationEnabled': sniValidationEnabled,
      'trustedRootCertificateNames': trustedRootCertificateNames,
    };
  }

  factory GetApplicationGatewayBackendHttpSetting.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendHttpSetting(
      affinityCookieName: pulumi.Input.fromValue(map['affinityCookieName'] as String),
      authenticationCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate>(map['authenticationCertificates']!, (value) => GetApplicationGatewayBackendHttpSettingAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      certificateChainValidationEnabled: pulumi.Input.fromValue(map['certificateChainValidationEnabled'] as bool),
      connectionDrainings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayBackendHttpSettingConnectionDraining>(map['connectionDrainings']!, (value) => GetApplicationGatewayBackendHttpSettingConnectionDraining.fromMap((value as Map).cast<String, dynamic>()))),
      cookieBasedAffinity: pulumi.Input.fromValue(map['cookieBasedAffinity'] as String),
      dedicatedBackendConnectionEnabled: pulumi.Input.fromValue(map['dedicatedBackendConnectionEnabled'] as bool),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      pickHostNameFromBackendAddress: pulumi.Input.fromValue(map['pickHostNameFromBackendAddress'] as bool),
      port: pulumi.Input.fromValue(map['port'] as int),
      probeId: pulumi.Input.fromValue(map['probeId'] as String),
      probeName: pulumi.Input.fromValue(map['probeName'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      requestTimeout: pulumi.Input.fromValue(map['requestTimeout'] as int),
      sniName: pulumi.Input.fromValue(map['sniName'] as String),
      sniValidationEnabled: pulumi.Input.fromValue(map['sniValidationEnabled'] as bool),
      trustedRootCertificateNames: pulumi.Input.fromValue((map['trustedRootCertificateNames'] as List).cast<String>()),
    );
  }
}
