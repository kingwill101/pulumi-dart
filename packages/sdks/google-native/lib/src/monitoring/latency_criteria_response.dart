// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for a latency threshold SLI.
class LatencyCriteriaResponse {
  /// Good service is defined to be the count of requests made to this service that return in no more than threshold.
  final String threshold;

  /// Creates a new [LatencyCriteriaResponse].
  /// [threshold] Good service is defined to be the count of requests made to this service that return in no more than threshold.
  LatencyCriteriaResponse({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory LatencyCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return LatencyCriteriaResponse(
      threshold: map['threshold'] as String,
    );
  }
}

