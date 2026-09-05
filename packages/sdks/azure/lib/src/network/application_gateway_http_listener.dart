// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_http_listener_custom_error_configuration.dart';

class ApplicationGatewayHttpListener {
  /// One or more `customErrorConfiguration` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayHttpListenerCustomErrorConfiguration>?>? customErrorConfigurations;
  /// The ID of the Web Application Firewall Policy which should be used for this HTTP Listener.
  final pulumi.Input<String?>? firewallPolicyId;
  /// The ID of the associated Frontend Configuration.
  final pulumi.Input<String?>? frontendIpConfigurationId;
  /// The Name of the Frontend IP Configuration used for this HTTP Listener.
  final pulumi.Input<String> frontendIpConfigurationName;
  /// The ID of the associated Frontend Port.
  final pulumi.Input<String?>? frontendPortId;
  /// The Name of the Frontend Port use for this HTTP Listener.
  final pulumi.Input<String> frontendPortName;
  /// The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'.
  final pulumi.Input<String?>? hostName;
  /// A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters.
  ///
  /// &gt; **Note:** The `hostNames` and `hostName` are mutually exclusive and cannot both be set.
  final pulumi.Input<List<String>?>? hostNames;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String?>? id;
  /// The Name of the HTTP Listener.
  final pulumi.Input<String> name;
  /// The Protocol to use for this HTTP Listener. Possible values are `Http` and `Https`.
  final pulumi.Input<String> protocol;
  /// Should Server Name Indication be Required? Defaults to `false`.
  final pulumi.Input<bool?>? requireSni;
  /// The ID of the associated SSL Certificate.
  final pulumi.Input<String?>? sslCertificateId;
  /// The name of the associated SSL Certificate which should be used for this HTTP Listener.
  final pulumi.Input<String?>? sslCertificateName;
  /// The ID of the associated SSL Profile.
  final pulumi.Input<String?>? sslProfileId;
  /// The name of the associated SSL Profile which should be used for this HTTP Listener.
  final pulumi.Input<String?>? sslProfileName;

  /// Creates a new [ApplicationGatewayHttpListener].
  /// [customErrorConfigurations] One or more `customErrorConfiguration` blocks as defined below.
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
  const ApplicationGatewayHttpListener({
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
      customErrorConfigurations: (() { final guardedValue = map['customErrorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayHttpListenerCustomErrorConfiguration>(guardedValue, (value) => ApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      firewallPolicyId: (() { final guardedValue = map['firewallPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurationId: (() { final guardedValue = map['frontendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurationName: pulumi.Input.fromValue(map['frontendIpConfigurationName'] as String),
      frontendPortId: (() { final guardedValue = map['frontendPortId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendPortName: pulumi.Input.fromValue(map['frontendPortName'] as String),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      requireSni: (() { final guardedValue = map['requireSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslCertificateId: (() { final guardedValue = map['sslCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateName: (() { final guardedValue = map['sslCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslProfileId: (() { final guardedValue = map['sslProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslProfileName: (() { final guardedValue = map['sslProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
