// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_http_listener_custom_error_configuration.dart';

class GetApplicationGatewayHttpListener {
  /// One or more `customErrorConfiguration` blocks as defined below.
  final pulumi.Input<List<GetApplicationGatewayHttpListenerCustomErrorConfiguration>> customErrorConfigurations;
  /// The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  final pulumi.Input<String> firewallPolicyId;
  /// The ID of the associated Frontend Configuration.
  final pulumi.Input<String> frontendIpConfigurationId;
  /// The Name of the Frontend IP Configuration used for this Listener.
  final pulumi.Input<String> frontendIpConfigurationName;
  /// The ID of the associated Frontend Port.
  final pulumi.Input<String> frontendPortId;
  /// The Name of the Frontend Port used for this Listener.
  final pulumi.Input<String> frontendPortName;
  /// The Hostname which is used for this HTTP Listener.
  final pulumi.Input<String> hostName;
  /// A list of Hostname(s) used for this Listener.
  final pulumi.Input<List<String>> hostNames;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The Protocol used for this Probe.
  final pulumi.Input<String> protocol;
  /// Is Server Name Indication required?
  final pulumi.Input<bool> requireSni;
  /// The ID of the associated SSL Certificate.
  final pulumi.Input<String> sslCertificateId;
  /// The name of the associated SSL Certificate which is used for this Listener.
  final pulumi.Input<String> sslCertificateName;
  /// The ID of the associated SSL Profile.
  final pulumi.Input<String> sslProfileId;
  /// The name of the associated SSL Profile which is used for this Listener.
  final pulumi.Input<String> sslProfileName;

  /// Creates a new [GetApplicationGatewayHttpListener].
  /// [customErrorConfigurations] One or more `customErrorConfiguration` blocks as defined below.
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which is used as an HTTP Listener for this Path Rule.
  /// [frontendIpConfigurationId] The ID of the associated Frontend Configuration.
  /// [frontendIpConfigurationName] The Name of the Frontend IP Configuration used for this Listener.
  /// [frontendPortId] The ID of the associated Frontend Port.
  /// [frontendPortName] The Name of the Frontend Port used for this Listener.
  /// [hostName] The Hostname which is used for this HTTP Listener.
  /// [hostNames] A list of Hostname(s) used for this Listener.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [protocol] The Protocol used for this Probe.
  /// [requireSni] Is Server Name Indication required?
  /// [sslCertificateId] The ID of the associated SSL Certificate.
  /// [sslCertificateName] The name of the associated SSL Certificate which is used for this Listener.
  /// [sslProfileId] The ID of the associated SSL Profile.
  /// [sslProfileName] The name of the associated SSL Profile which is used for this Listener.
  const GetApplicationGatewayHttpListener({
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
      'customErrorConfigurations': pulumi.Input.mapInputValue<List<GetApplicationGatewayHttpListenerCustomErrorConfiguration>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<GetApplicationGatewayHttpListenerCustomErrorConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      customErrorConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayHttpListenerCustomErrorConfiguration>(map['customErrorConfigurations']!, (value) => GetApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      firewallPolicyId: pulumi.Input.fromValue(map['firewallPolicyId'] as String),
      frontendIpConfigurationId: pulumi.Input.fromValue(map['frontendIpConfigurationId'] as String),
      frontendIpConfigurationName: pulumi.Input.fromValue(map['frontendIpConfigurationName'] as String),
      frontendPortId: pulumi.Input.fromValue(map['frontendPortId'] as String),
      frontendPortName: pulumi.Input.fromValue(map['frontendPortName'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      hostNames: pulumi.Input.fromValue((map['hostNames'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      requireSni: pulumi.Input.fromValue(map['requireSni'] as bool),
      sslCertificateId: pulumi.Input.fromValue(map['sslCertificateId'] as String),
      sslCertificateName: pulumi.Input.fromValue(map['sslCertificateName'] as String),
      sslProfileId: pulumi.Input.fromValue(map['sslProfileId'] as String),
      sslProfileName: pulumi.Input.fromValue(map['sslProfileName'] as String),
    );
  }
}
