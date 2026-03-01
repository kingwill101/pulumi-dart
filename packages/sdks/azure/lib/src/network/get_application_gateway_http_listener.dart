// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_http_listener_custom_error_configuration.dart';

class GetApplicationGatewayHttpListener {
  /// One or more `custom_error_configuration` blocks as defined below.
  final List<GetApplicationGatewayHttpListenerCustomErrorConfiguration> customErrorConfigurations;
  /// The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  final String firewallPolicyId;
  /// The ID of the associated Frontend Configuration.
  final String frontendIpConfigurationId;
  /// The Name of the Frontend IP Configuration used for this HTTP Listener.
  final String frontendIpConfigurationName;
  /// The ID of the associated Frontend Port.
  final String frontendPortId;
  /// The Name of the Frontend Port used for this HTTP Listener.
  final String frontendPortName;
  /// The Hostname which is used for this HTTP Listener.
  final String hostName;
  /// A list of Hostname(s) used for this HTTP Listener. It allows special wildcard characters.
  final List<String> hostNames;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// The Protocol used for this Probe.
  final String protocol;
  /// Is Server Name Indication required?
  final bool requireSni;
  /// The ID of the associated SSL Certificate.
  final String sslCertificateId;
  /// The name of the associated SSL Certificate which is used for this HTTP Listener.
  final String sslCertificateName;
  /// The ID of the associated SSL Profile.
  final String sslProfileId;
  /// The name of the associated SSL Profile which is used for this HTTP Listener.
  final String sslProfileName;

  /// Creates a new [GetApplicationGatewayHttpListener].
  /// [customErrorConfigurations] One or more `custom_error_configuration` blocks as defined below.
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  /// [frontendIpConfigurationId] The ID of the associated Frontend Configuration.
  /// [frontendIpConfigurationName] The Name of the Frontend IP Configuration used for this HTTP Listener.
  /// [frontendPortId] The ID of the associated Frontend Port.
  /// [frontendPortName] The Name of the Frontend Port used for this HTTP Listener.
  /// [hostName] The Hostname which is used for this HTTP Listener.
  /// [hostNames] A list of Hostname(s) used for this HTTP Listener. It allows special wildcard characters.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [protocol] The Protocol used for this Probe.
  /// [requireSni] Is Server Name Indication required?
  /// [sslCertificateId] The ID of the associated SSL Certificate.
  /// [sslCertificateName] The name of the associated SSL Certificate which is used for this HTTP Listener.
  /// [sslProfileId] The ID of the associated SSL Profile.
  /// [sslProfileName] The name of the associated SSL Profile which is used for this HTTP Listener.
  GetApplicationGatewayHttpListener({
    required this.customErrorConfigurations,
    required this.firewallPolicyId,
    required this.frontendIpConfigurationId,
    required this.frontendIpConfigurationName,
    required this.frontendPortId,
    required this.frontendPortName,
    required this.hostName,
    required this.hostNames,
    required this.id,
    required this.name,
    required this.protocol,
    required this.requireSni,
    required this.sslCertificateId,
    required this.sslCertificateName,
    required this.sslProfileId,
    required this.sslProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorConfigurations': pulumi.Input.encodeList<GetApplicationGatewayHttpListenerCustomErrorConfiguration, Map<String, dynamic>>(customErrorConfigurations, (value) => value.toMap()),
      'firewallPolicyId': firewallPolicyId,
      'frontendIpConfigurationId': frontendIpConfigurationId,
      'frontendIpConfigurationName': frontendIpConfigurationName,
      'frontendPortId': frontendPortId,
      'frontendPortName': frontendPortName,
      'hostName': hostName,
      'hostNames': hostNames,
      'id': id,
      'name': name,
      'protocol': protocol,
      'requireSni': requireSni,
      'sslCertificateId': sslCertificateId,
      'sslCertificateName': sslCertificateName,
      'sslProfileId': sslProfileId,
      'sslProfileName': sslProfileName,
    };
  }

  factory GetApplicationGatewayHttpListener.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayHttpListener(
      customErrorConfigurations: pulumi.Input.decodeList<GetApplicationGatewayHttpListenerCustomErrorConfiguration>(map['customErrorConfigurations'], (value) => GetApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      firewallPolicyId: map['firewallPolicyId'] as String,
      frontendIpConfigurationId: map['frontendIpConfigurationId'] as String,
      frontendIpConfigurationName: map['frontendIpConfigurationName'] as String,
      frontendPortId: map['frontendPortId'] as String,
      frontendPortName: map['frontendPortName'] as String,
      hostName: map['hostName'] as String,
      hostNames: (map['hostNames'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
      requireSni: map['requireSni'] as bool,
      sslCertificateId: map['sslCertificateId'] as String,
      sslCertificateName: map['sslCertificateName'] as String,
      sslProfileId: map['sslProfileId'] as String,
      sslProfileName: map['sslProfileName'] as String,
    );
  }
}

