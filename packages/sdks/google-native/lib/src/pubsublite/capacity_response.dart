// ignore_for_file: unused_element, unnecessary_cast


/// The throughput capacity configuration for each partition.
class CapacityResponse {
  /// Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  final int publishMibPerSec;
  /// Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
  final int subscribeMibPerSec;

  /// Creates a new [CapacityResponse].
  /// [publishMibPerSec] Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16.
  /// [subscribeMibPerSec] Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32.
  CapacityResponse({
    required this.publishMibPerSec,
    required this.subscribeMibPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMibPerSec': publishMibPerSec,
      'subscribeMibPerSec': subscribeMibPerSec,
    };
  }

  factory CapacityResponse.fromMap(Map<String, dynamic> map) {
    return CapacityResponse(
      publishMibPerSec: map['publishMibPerSec'] as int,
      subscribeMibPerSec: map['subscribeMibPerSec'] as int,
    );
  }
}

