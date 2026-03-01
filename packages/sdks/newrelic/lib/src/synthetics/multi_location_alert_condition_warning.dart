// ignore_for_file: unused_element, unnecessary_cast


class MultiLocationAlertConditionWarning {
  /// The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  final int threshold;

  /// Creates a new [MultiLocationAlertConditionWarning].
  /// [threshold] The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  MultiLocationAlertConditionWarning({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory MultiLocationAlertConditionWarning.fromMap(Map<String, dynamic> map) {
    return MultiLocationAlertConditionWarning(
      threshold: map['threshold'] as int,
    );
  }
}

