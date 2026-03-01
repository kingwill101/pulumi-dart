// ignore_for_file: unused_element, unnecessary_cast


class SloBasicSliLatency {
  /// A duration string, e.g. 10s.
  /// Good service is defined to be the count of requests made to
  /// this service that return in no more than threshold.
  final String threshold;

  /// Creates a new [SloBasicSliLatency].
  /// [threshold] A duration string, e.g. 10s.
  SloBasicSliLatency({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory SloBasicSliLatency.fromMap(Map<String, dynamic> map) {
    return SloBasicSliLatency(
      threshold: map['threshold'] as String,
    );
  }
}

