// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_http_listener_custom_error_configuration.dart';

class ApplicationGatewayHttpListener {
  /// One or more `custom_error_configuration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayHttpListenerCustomErrorConfiguration>>? customErrorConfigurations;
  /// The ID of the Web Application Firewall Policy which should be used for this HTTP Listener.
  final pulumi.Input<String>? firewallPolicyId;
  /// The ID of the associated Frontend Configuration.
  final pulumi.Input<String>? frontendIpConfigurationId;
  /// The Name of the Frontend IP Configuration used for this HTTP Listener.
  final pulumi.Input<String> frontendIpConfigurationName;
  /// The ID of the associated Frontend Port.
  final pulumi.Input<String>? frontendPortId;
  /// The Name of the Frontend Port use for this HTTP Listener.
  final pulumi.Input<String> frontendPortName;
  /// The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'.
  final pulumi.Input<String>? hostName;
  /// A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters.
  ///
  /// > **Note:** The `host_names` and `host_name` are mutually exclusive and cannot both be set.
  final pulumi.Input<List<String>>? hostNames;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Name of the HTTP Listener.
  final pulumi.Input<String> name;
  /// The Protocol to use for this HTTP Listener. Possible values are `Http` and `Https`.
  final pulumi.Input<String> protocol;
  /// Should Server Name Indication be Required? Defaults to `false`.
  final pulumi.Input<bool>? requireSni;
  /// The ID of the associated SSL Certificate.
  final pulumi.Input<String>? sslCertificateId;
  /// The name of the associated SSL Certificate which should be used for this HTTP Listener.
  final pulumi.Input<String>? sslCertificateName;
  /// The ID of the associated SSL Profile.
  final pulumi.Input<String>? sslProfileId;
  /// The name of the associated SSL Profile which should be used for this HTTP Listener.
  final pulumi.Input<String>? sslProfileName;

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
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHttpListenerCustomErrorConfiguration>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayHttpListenerCustomErrorConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayHttpListenerCustomErrorConfiguration>(map['customErrorConfigurations']!, (value) => ApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firewallPolicyId: map['firewallPolicyId'] == null ? null : (map['firewallPolicyId']! as String).input(),
      frontendIpConfigurationId: map['frontendIpConfigurationId'] == null ? null : (map['frontendIpConfigurationId']! as String).input(),
      frontendIpConfigurationName: (map['frontendIpConfigurationName'] as String).input(),
      frontendPortId: map['frontendPortId'] == null ? null : (map['frontendPortId']! as String).input(),
      frontendPortName: (map['frontendPortName'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      requireSni: map['requireSni'] == null ? null : (map['requireSni']! as bool).input(),
      sslCertificateId: map['sslCertificateId'] == null ? null : (map['sslCertificateId']! as String).input(),
      sslCertificateName: map['sslCertificateName'] == null ? null : (map['sslCertificateName']! as String).input(),
      sslProfileId: map['sslProfileId'] == null ? null : (map['sslProfileId']! as String).input(),
      sslProfileName: map['sslProfileName'] == null ? null : (map['sslProfileName']! as String).input(),
    );
  }
}

