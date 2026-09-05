// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayListener {
  /// The ID of the associated Frontend Configuration.
  final pulumi.Input<String?>? frontendIpConfigurationId;
  /// The Name of the Frontend IP Configuration used for this Listener.
  final pulumi.Input<String> frontendIpConfigurationName;
  /// The ID of the associated Frontend Port.
  final pulumi.Input<String?>? frontendPortId;
  /// The Name of the Frontend Port use for this Listener.
  final pulumi.Input<String> frontendPortName;
  /// A list of Hostname(s) should be used for this Listener. It allows special wildcard characters.
  ///
  /// &gt; **Note:** `hostNames` cannot be set when `protocol` is set to `Tcp`.
  final pulumi.Input<List<String>?>? hostNames;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String?>? id;
  /// The Name of the Listener.
  final pulumi.Input<String> name;
  /// The Protocol to use for this Listener. Possible values are `Tcp`, and `Tls`.
  final pulumi.Input<String> protocol;
  /// The ID of the associated SSL Certificate.
  final pulumi.Input<String?>? sslCertificateId;
  /// The name of the associated SSL Certificate which should be used for this Listener.
  ///
  /// &gt; **Note:** `sslCertificateName` must be set when `protocol` is set to `Tls`.
  final pulumi.Input<String?>? sslCertificateName;
  /// The ID of the associated SSL Profile.
  final pulumi.Input<String?>? sslProfileId;
  /// The name of the associated SSL Profile which should be used for this Listener.
  final pulumi.Input<String?>? sslProfileName;

  /// Creates a new [ApplicationGatewayListener].
  /// [frontendIpConfigurationId] The ID of the associated Frontend Configuration.
  /// [frontendIpConfigurationName] The Name of the Frontend IP Configuration used for this Listener.
  /// [frontendPortId] The ID of the associated Frontend Port.
  /// [frontendPortName] The Name of the Frontend Port use for this Listener.
  /// [hostNames] A list of Hostname(s) should be used for this Listener. It allows special wildcard characters.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the Listener.
  /// [protocol] The Protocol to use for this Listener. Possible values are `Tcp`, and `Tls`.
  /// [sslCertificateId] The ID of the associated SSL Certificate.
  /// [sslCertificateName] The name of the associated SSL Certificate which should be used for this Listener.
  /// [sslProfileId] The ID of the associated SSL Profile.
  /// [sslProfileName] The name of the associated SSL Profile which should be used for this Listener.
  const ApplicationGatewayListener({
    this.frontendIpConfigurationId,
    required this.frontendIpConfigurationName,
    this.frontendPortId,
    required this.frontendPortName,
    this.hostNames,
    this.id,
    required this.name,
    required this.protocol,
    this.sslCertificateId,
    this.sslCertificateName,
    this.sslProfileId,
    this.sslProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendIpConfigurationId': ?frontendIpConfigurationId,
      'frontendIpConfigurationName': frontendIpConfigurationName,
      'frontendPortId': ?frontendPortId,
      'frontendPortName': frontendPortName,
      'hostNames': ?hostNames,
      'id': ?id,
      'name': name,
      'protocol': protocol,
      'sslCertificateId': ?sslCertificateId,
      'sslCertificateName': ?sslCertificateName,
      'sslProfileId': ?sslProfileId,
      'sslProfileName': ?sslProfileName,
    };
  }

  factory ApplicationGatewayListener.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayListener(
      frontendIpConfigurationId: (() { final guardedValue = map['frontendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIpConfigurationName: pulumi.Input.fromValue(map['frontendIpConfigurationName'] as String),
      frontendPortId: (() { final guardedValue = map['frontendPortId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendPortName: pulumi.Input.fromValue(map['frontendPortName'] as String),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sslCertificateId: (() { final guardedValue = map['sslCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateName: (() { final guardedValue = map['sslCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslProfileId: (() { final guardedValue = map['sslProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslProfileName: (() { final guardedValue = map['sslProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
