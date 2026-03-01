// ignore_for_file: unused_element, unnecessary_cast


class SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency {
  /// A duration string, e.g. 10s.
  /// Good service is defined to be the count of requests made to
  /// this service that return in no more than threshold.
  final String threshold;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency].
  /// [threshold] A duration string, e.g. 10s.
  SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceLatency(
      threshold: map['threshold'] as String,
    );
  }
}

