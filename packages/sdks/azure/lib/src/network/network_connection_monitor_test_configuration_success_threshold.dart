// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkConnectionMonitorTestConfigurationSuccessThreshold {
  /// The maximum percentage of failed checks permitted for a test to be successful.
  final pulumi.Input<int>? checksFailedPercent;
  /// The maximum round-trip time in milliseconds permitted for a test to be successful.
  final pulumi.Input<double>? roundTripTimeMs;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationSuccessThreshold].
  /// [checksFailedPercent] The maximum percentage of failed checks permitted for a test to be successful.
  /// [roundTripTimeMs] The maximum round-trip time in milliseconds permitted for a test to be successful.
  NetworkConnectionMonitorTestConfigurationSuccessThreshold({
    this.checksFailedPercent,
    this.roundTripTimeMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksFailedPercent': ?checksFailedPercent,
      'roundTripTimeMs': ?roundTripTimeMs,
    };
  }

  factory NetworkConnectionMonitorTestConfigurationSuccessThreshold.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfigurationSuccessThreshold(
      checksFailedPercent: (() { final guardedValue = map['checksFailedPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      roundTripTimeMs: (() { final guardedValue = map['roundTripTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

