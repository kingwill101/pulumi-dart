// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_http_listener_custom_error_configuration.dart';

class ApplicationGatewayHttpListener {
  /// One or more `custom_error_configuration` blocks as defined below.
  final List<ApplicationGatewayHttpListenerCustomErrorConfiguration>? customErrorConfigurations;
  /// The ID of the Web Application Firewall Policy which should be used for this HTTP Listener.
  final String? firewallPolicyId;
  /// The ID of the associated Frontend Configuration.
  final String? frontendIpConfigurationId;
  /// The Name of the Frontend IP Configuration used for this HTTP Listener.
  final String frontendIpConfigurationName;
  /// The ID of the associated Frontend Port.
  final String? frontendPortId;
  /// The Name of the Frontend Port use for this HTTP Listener.
  final String frontendPortName;
  /// The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'.
  final String? hostName;
  /// A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters.
  ///
  /// > **Note:** The `host_names` and `host_name` are mutually exclusive and cannot both be set.
  final List<String>? hostNames;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Name of the HTTP Listener.
  final String name;
  /// The Protocol to use for this HTTP Listener. Possible values are `Http` and `Https`.
  final String protocol;
  /// Should Server Name Indication be Required? Defaults to `false`.
  final bool? requireSni;
  /// The ID of the associated SSL Certificate.
  final String? sslCertificateId;
  /// The name of the associated SSL Certificate which should be used for this HTTP Listener.
  final String? sslCertificateName;
  /// The ID of the associated SSL Profile.
  final String? sslProfileId;
  /// The name of the associated SSL Profile which should be used for this HTTP Listener.
  final String? sslProfileName;

  /// Creates a new [ApplicationGatewayHttpListener].
  /// [customErrorConfigurations] One or more `custom_error_configuration` blocks as defined below.
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which should be used for this HTTP Listener.
  /// [frontendIpConfigurationId] The ID of the associated Frontend Configuration.
  /// [frontendIpConfigurationName] The Name of the Frontend IP Configuration used for this HTTP Listener.
  /// [frontendPortId] The ID of the associated Frontend Port.
  /// [frontendPortName] The Name of the Frontend Port use for this HTTP Listener.
  /// [hostName] The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'.
  /// [hostNames] A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the HTTP Listener.
  /// [protocol] The Protocol to use for this HTTP Listener. Possible values are `Http` and `Https`.
  /// [requireSni] Should Server Name Indication be Required? Defaults to `false`.
  /// [sslCertificateId] The ID of the associated SSL Certificate.
  /// [sslCertificateName] The name of the associated SSL Certificate which should be used for this HTTP Listener.
  /// [sslProfileId] The ID of the associated SSL Profile.
  /// [sslProfileName] The name of the associated SSL Profile which should be used for this HTTP Listener.
  ApplicationGatewayHttpListener({
    this.customErrorConfigurations,
    this.firewallPolicyId,
    this.frontendIpConfigurationId,
    required this.frontendIpConfigurationName,
    this.frontendPortId,
    required this.frontendPortName,
    this.hostName,
    this.hostNames,
    this.id,
    required this.name,
    required this.protocol,
    this.requireSni,
    this.sslCertificateId,
    this.sslCertificateName,
    this.sslProfileId,
    this.sslProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorConfigurations': ?customErrorConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayHttpListenerCustomErrorConfiguration, Map<String, dynamic>>(customErrorConfigurations!, (value) => value.toMap()),
      'firewallPolicyId': ?firewallPolicyId,
      'frontendIpConfigurationId': ?frontendIpConfigurationId,
      'frontendIpConfigurationName': frontendIpConfigurationName,
      'frontendPortId': ?frontendPortId,
      'frontendPortName': frontendPortName,
      'hostName': ?hostName,
      'hostNames': ?hostNames,
      'id': ?id,
      'name': name,
      'protocol': protocol,
      'requireSni': ?requireSni,
      'sslCertificateId': ?sslCertificateId,
      'sslCertificateName': ?sslCertificateName,
      'sslProfileId': ?sslProfileId,
      'sslProfileName': ?sslProfileName,
    };
  }

  factory ApplicationGatewayHttpListener.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHttpListener(
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayHttpListenerCustomErrorConfiguration>(map['customErrorConfigurations'], (value) => ApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      firewallPolicyId: map['firewallPolicyId'] == null ? null : map['firewallPolicyId'] as String,
      frontendIpConfigurationId: map['frontendIpConfigurationId'] == null ? null : map['frontendIpConfigurationId'] as String,
      frontendIpConfigurationName: map['frontendIpConfigurationName'] as String,
      frontendPortId: map['frontendPortId'] == null ? null : map['frontendPortId'] as String,
      frontendPortName: map['frontendPortName'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      hostNames: map['hostNames'] == null ? null : (map['hostNames'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      protocol: map['protocol'] as String,
      requireSni: map['requireSni'] == null ? null : map['requireSni'] as bool,
      sslCertificateId: map['sslCertificateId'] == null ? null : map['sslCertificateId'] as String,
      sslCertificateName: map['sslCertificateName'] == null ? null : map['sslCertificateName'] as String,
      sslProfileId: map['sslProfileId'] == null ? null : map['sslProfileId'] as String,
      sslProfileName: map['sslProfileName'] == null ? null : map['sslProfileName'] as String,
    );
  }
}

