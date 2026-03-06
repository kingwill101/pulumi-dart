// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterLbRule {
  /// LB Backend port.
  final pulumi.Input<int> backendPort;
  /// LB Frontend port.
  final pulumi.Input<int> frontendPort;
  /// Protocol for the probe. Can be one of `tcp`, `udp`, `http`, or `https`.
  final pulumi.Input<String> probeProtocol;
  /// Path for the probe to check, when probe protocol is set to `http`.
  final pulumi.Input<String>? probeRequestPath;
  /// The transport protocol used in this rule. Can be one of `tcp` or `udp`.
  final pulumi.Input<String> protocol;

  /// Creates a new [ManagedClusterLbRule].
  /// [backendPort] LB Backend port.
  /// [frontendPort] LB Frontend port.
  /// [probeProtocol] Protocol for the probe. Can be one of `tcp`, `udp`, `http`, or `https`.
  /// [probeRequestPath] Path for the probe to check, when probe protocol is set to `http`.
  /// [protocol] The transport protocol used in this rule. Can be one of `tcp` or `udp`.
  const ManagedClusterLbRule({
    required this.backendPort,
    required this.frontendPort,
    required this.probeProtocol,
    this.probeRequestPath,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'probeProtocol': probeProtocol,
      'probeRequestPath': ?probeRequestPath,
      'protocol': protocol,
    };
  }

  factory ManagedClusterLbRule.fromMap(Map<String, dynamic> map) {
    return ManagedClusterLbRule(
      backendPort: pulumi.Input.fromValue(map['backendPort'] as int),
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      probeProtocol: pulumi.Input.fromValue(map['probeProtocol'] as String),
      probeRequestPath: (() { final guardedValue = map['probeRequestPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

