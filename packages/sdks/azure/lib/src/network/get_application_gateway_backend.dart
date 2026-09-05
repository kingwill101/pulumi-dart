// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayBackend {
  /// Whether client IP preservation is enabled for the Backend Settings.
  final pulumi.Input<bool> clientIpPreservationEnabled;
  /// The Hostname which is used for this HTTP Listener.
  final pulumi.Input<String> hostName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// Custom port which is used for probing the backend servers.
  final pulumi.Input<int> port;
  /// The ID of the associated Probe.
  final pulumi.Input<String> probeId;
  /// The name of the associated Probe.
  final pulumi.Input<String> probeName;
  /// The Protocol used for this Probe.
  final pulumi.Input<String> protocol;
  /// The request timeout in seconds for the Backend Settings.
  final pulumi.Input<int> timeoutInSeconds;
  /// A list of `trustedRootCertificate` names.
  final pulumi.Input<List<String>> trustedRootCertificateNames;

  /// Creates a new [GetApplicationGatewayBackend].
  /// [clientIpPreservationEnabled] Whether client IP preservation is enabled for the Backend Settings.
  /// [hostName] The Hostname which is used for this HTTP Listener.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [port] Custom port which is used for probing the backend servers.
  /// [probeId] The ID of the associated Probe.
  /// [probeName] The name of the associated Probe.
  /// [protocol] The Protocol used for this Probe.
  /// [timeoutInSeconds] The request timeout in seconds for the Backend Settings.
  /// [trustedRootCertificateNames] A list of `trustedRootCertificate` names.
  const GetApplicationGatewayBackend({
    required this.clientIpPreservationEnabled,
    required this.hostName,
    required this.id,
    required this.name,
    required this.port,
    required this.probeId,
    required this.probeName,
    required this.protocol,
    required this.timeoutInSeconds,
    required this.trustedRootCertificateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpPreservationEnabled': clientIpPreservationEnabled,
      'hostName': hostName,
      'id': id,
      'name': name,
      'port': port,
      'probeId': probeId,
      'probeName': probeName,
      'protocol': protocol,
      'timeoutInSeconds': timeoutInSeconds,
      'trustedRootCertificateNames': trustedRootCertificateNames,
    };
  }

  factory GetApplicationGatewayBackend.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackend(
      clientIpPreservationEnabled: pulumi.Input.fromValue(map['clientIpPreservationEnabled'] as bool),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      probeId: pulumi.Input.fromValue(map['probeId'] as String),
      probeName: pulumi.Input.fromValue(map['probeName'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeoutInSeconds: pulumi.Input.fromValue((map['timeoutInSeconds'] as num).toInt()),
      trustedRootCertificateNames: pulumi.Input.fromValue((map['trustedRootCertificateNames'] as List).cast<String>()),
    );
  }
}
