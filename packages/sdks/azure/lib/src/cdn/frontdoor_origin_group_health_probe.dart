// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorOriginGroupHealthProbe {
  /// Specifies the number of seconds between health probes. Possible values are between `1` and `255` seconds (inclusive).
  final pulumi.Input<int> intervalInSeconds;
  /// Specifies the path relative to the origin that is used to determine the health of the origin. Defaults to `/`.
  ///
  /// > **Note:** Health probes can only be disabled if there is a single enabled origin in a single enabled origin group. For more information about the `health_probe` settings please see the [product documentation](https://docs.microsoft.com/azure/frontdoor/health-probes).
  final pulumi.Input<String>? path;
  /// Specifies the protocol to use for health probe. Possible values are `Http` and `Https`.
  final pulumi.Input<String> protocol;
  /// Specifies the type of health probe request that is made. Possible values are `GET` and `HEAD`. Defaults to `HEAD`.
  final pulumi.Input<String>? requestType;

  /// Creates a new [FrontdoorOriginGroupHealthProbe].
  /// [intervalInSeconds] Specifies the number of seconds between health probes. Possible values are between `1` and `255` seconds (inclusive).
  /// [path] Specifies the path relative to the origin that is used to determine the health of the origin. Defaults to `/`.
  /// [protocol] Specifies the protocol to use for health probe. Possible values are `Http` and `Https`.
  /// [requestType] Specifies the type of health probe request that is made. Possible values are `GET` and `HEAD`. Defaults to `HEAD`.
  FrontdoorOriginGroupHealthProbe({
    required this.intervalInSeconds,
    this.path,
    required this.protocol,
    this.requestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': intervalInSeconds,
      'path': ?path,
      'protocol': protocol,
      'requestType': ?requestType,
    };
  }

  factory FrontdoorOriginGroupHealthProbe.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginGroupHealthProbe(
      intervalInSeconds: (map['intervalInSeconds'] as int).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      requestType: map['requestType'] == null ? null : (map['requestType'] as String).input(),
    );
  }
}

