// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_backend_http_setting_authentication_certificate.dart';
import 'get_application_gateway_backend_http_setting_connection_draining.dart';

class GetApplicationGatewayBackendHttpSetting {
  /// The name of the affinity cookie.
  final String affinityCookieName;
  /// One or more `authentication_certificate` blocks as defined below.
  final List<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate> authenticationCertificates;
  /// A `connection_draining` block as defined below.
  final List<GetApplicationGatewayBackendHttpSettingConnectionDraining> connectionDrainings;
  /// Is Cookie-Based Affinity enabled?
  final String cookieBasedAffinity;
  /// Whether a dedicated backend connection is used.
  final bool dedicatedBackendConnectionEnabled;
  /// The Hostname which is used for this HTTP Listener.
  final String hostName;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// The URL path to rewrite.
  final String path;
  /// Whether host header will be picked from the host name of the backend server.
  final bool pickHostNameFromBackendAddress;
  /// Custom port which is used for probing the backend servers.
  final int port;
  /// The ID of the associated Probe.
  final String probeId;
  /// The name of the associated HTTP Probe.
  final String probeName;
  /// The Protocol used for this Probe.
  final String protocol;
  /// The request timeout in seconds.
  final int requestTimeout;
  /// A list of `trusted_root_certificate` names.
  final List<String> trustedRootCertificateNames;

  /// Creates a new [GetApplicationGatewayBackendHttpSetting].
  /// [affinityCookieName] The name of the affinity cookie.
  /// [authenticationCertificates] One or more `authentication_certificate` blocks as defined below.
  /// [connectionDrainings] A `connection_draining` block as defined below.
  /// [cookieBasedAffinity] Is Cookie-Based Affinity enabled?
  /// [dedicatedBackendConnectionEnabled] Whether a dedicated backend connection is used.
  /// [hostName] The Hostname which is used for this HTTP Listener.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [path] The URL path to rewrite.
  /// [pickHostNameFromBackendAddress] Whether host header will be picked from the host name of the backend server.
  /// [port] Custom port which is used for probing the backend servers.
  /// [probeId] The ID of the associated Probe.
  /// [probeName] The name of the associated HTTP Probe.
  /// [protocol] The Protocol used for this Probe.
  /// [requestTimeout] The request timeout in seconds.
  /// [trustedRootCertificateNames] A list of `trusted_root_certificate` names.
  GetApplicationGatewayBackendHttpSetting({
    required this.affinityCookieName,
    required this.authenticationCertificates,
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
    required this.trustedRootCertificateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinityCookieName': affinityCookieName,
      'authenticationCertificates': pulumi.Input.encodeList<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate, Map<String, dynamic>>(authenticationCertificates, (value) => value.toMap()),
      'connectionDrainings': pulumi.Input.encodeList<GetApplicationGatewayBackendHttpSettingConnectionDraining, Map<String, dynamic>>(connectionDrainings, (value) => value.toMap()),
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
      'trustedRootCertificateNames': trustedRootCertificateNames,
    };
  }

  factory GetApplicationGatewayBackendHttpSetting.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendHttpSetting(
      affinityCookieName: map['affinityCookieName'] as String,
      authenticationCertificates: pulumi.Input.decodeList<GetApplicationGatewayBackendHttpSettingAuthenticationCertificate>(map['authenticationCertificates'], (value) => GetApplicationGatewayBackendHttpSettingAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>())),
      connectionDrainings: pulumi.Input.decodeList<GetApplicationGatewayBackendHttpSettingConnectionDraining>(map['connectionDrainings'], (value) => GetApplicationGatewayBackendHttpSettingConnectionDraining.fromMap((value as Map).cast<String, dynamic>())),
      cookieBasedAffinity: map['cookieBasedAffinity'] as String,
      dedicatedBackendConnectionEnabled: map['dedicatedBackendConnectionEnabled'] as bool,
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      pickHostNameFromBackendAddress: map['pickHostNameFromBackendAddress'] as bool,
      port: map['port'] as int,
      probeId: map['probeId'] as String,
      probeName: map['probeName'] as String,
      protocol: map['protocol'] as String,
      requestTimeout: map['requestTimeout'] as int,
      trustedRootCertificateNames: (map['trustedRootCertificateNames'] as List).cast<String>(),
    );
  }
}

