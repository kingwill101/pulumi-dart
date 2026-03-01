// ignore_for_file: unused_element, unnecessary_cast


class NetworkConnectionMonitorTestConfigurationSuccessThreshold {
  /// The maximum percentage of failed checks permitted for a test to be successful.
  final int? checksFailedPercent;
  /// The maximum round-trip time in milliseconds permitted for a test to be successful.
  final double? roundTripTimeMs;

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
      checksFailedPercent: map['checksFailedPercent'] == null ? null : map['checksFailedPercent'] as int,
      roundTripTimeMs: map['roundTripTimeMs'] == null ? null : map['roundTripTimeMs'] as double,
    );
  }
}

