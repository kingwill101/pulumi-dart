// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayBackend {
  /// Whether client IP preservation is enabled for this Backend Settings Collection. Defaults to `false`.
  final pulumi.Input<bool?>? clientIpPreservationEnabled;
  /// Host header to be sent to the backend servers. Can only be set when `protocol` is `Tls`.
  final pulumi.Input<String?>? hostName;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String?>? id;
  /// The name of the Backend Settings Collection.
  final pulumi.Input<String> name;
  /// The port which should be used for this Backend Settings Collection.
  final pulumi.Input<int> port;
  /// The ID of the associated Probe.
  final pulumi.Input<String?>? probeId;
  /// The name of an associated Probe.
  final pulumi.Input<String?>? probeName;
  /// The Protocol which should be used. Possible values are `Tcp` and `Tls`.
  final pulumi.Input<String> protocol;
  /// The connection timeout in seconds. Possible values range between `1` and `86400`. Defaults to `30`.
  final pulumi.Input<int?>? timeoutInSeconds;
  /// A list of `trustedRootCertificate` names.
  final pulumi.Input<List<String>?>? trustedRootCertificateNames;

  /// Creates a new [ApplicationGatewayBackend].
  /// [clientIpPreservationEnabled] Whether client IP preservation is enabled for this Backend Settings Collection. Defaults to `false`.
  /// [hostName] Host header to be sent to the backend servers. Can only be set when `protocol` is `Tls`.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Backend Settings Collection.
  /// [port] The port which should be used for this Backend Settings Collection.
  /// [probeId] The ID of the associated Probe.
  /// [probeName] The name of an associated Probe.
  /// [protocol] The Protocol which should be used. Possible values are `Tcp` and `Tls`.
  /// [timeoutInSeconds] The connection timeout in seconds. Possible values range between `1` and `86400`. Defaults to `30`.
  /// [trustedRootCertificateNames] A list of `trustedRootCertificate` names.
  const ApplicationGatewayBackend({
    this.clientIpPreservationEnabled,
    this.hostName,
    this.id,
    required this.name,
    required this.port,
    this.probeId,
    this.probeName,
    required this.protocol,
    this.timeoutInSeconds,
    this.trustedRootCertificateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpPreservationEnabled': ?clientIpPreservationEnabled,
      'hostName': ?hostName,
      'id': ?id,
      'name': name,
      'port': port,
      'probeId': ?probeId,
      'probeName': ?probeName,
      'protocol': protocol,
      'timeoutInSeconds': ?timeoutInSeconds,
      'trustedRootCertificateNames': ?trustedRootCertificateNames,
    };
  }

  factory ApplicationGatewayBackend.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackend(
      clientIpPreservationEnabled: (() { final guardedValue = map['clientIpPreservationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      probeId: (() { final guardedValue = map['probeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probeName: (() { final guardedValue = map['probeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      trustedRootCertificateNames: (() { final guardedValue = map['trustedRootCertificateNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
