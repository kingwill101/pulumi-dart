// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorOriginGroupHealthProbe {
  /// Specifies the number of seconds between health probes.
  final pulumi.Input<int> intervalInSeconds;
  /// Specifies the path relative to the origin that is used to determine the health of the origin.
  final pulumi.Input<String> path;
  /// Specifies the protocol to use for health probe.
  final pulumi.Input<String> protocol;
  /// Specifies the type of health probe request that is made.
  final pulumi.Input<String> requestType;

  /// Creates a new [GetFrontdoorOriginGroupHealthProbe].
  /// [intervalInSeconds] Specifies the number of seconds between health probes.
  /// [path] Specifies the path relative to the origin that is used to determine the health of the origin.
  /// [protocol] Specifies the protocol to use for health probe.
  /// [requestType] Specifies the type of health probe request that is made.
  const GetFrontdoorOriginGroupHealthProbe({
    required this.intervalInSeconds,
    required this.path,
    required this.protocol,
    required this.requestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': intervalInSeconds,
      'path': path,
      'protocol': protocol,
      'requestType': requestType,
    };
  }

  factory GetFrontdoorOriginGroupHealthProbe.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupHealthProbe(
      intervalInSeconds: pulumi.Input.fromValue(map['intervalInSeconds'] as int),
      path: pulumi.Input.fromValue(map['path'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      requestType: pulumi.Input.fromValue(map['requestType'] as String),
    );
  }
}
