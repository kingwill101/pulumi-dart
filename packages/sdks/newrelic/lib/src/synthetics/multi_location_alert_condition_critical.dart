// ignore_for_file: unused_element, unnecessary_cast


class MultiLocationAlertConditionCritical {
  /// The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  final int threshold;

  /// Creates a new [MultiLocationAlertConditionCritical].
  /// [threshold] The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  MultiLocationAlertConditionCritical({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory MultiLocationAlertConditionCritical.fromMap(Map<String, dynamic> map) {
    return MultiLocationAlertConditionCritical(
      threshold: map['threshold'] as int,
    );
  }
}

