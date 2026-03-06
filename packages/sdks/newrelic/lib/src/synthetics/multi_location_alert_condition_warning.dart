// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiLocationAlertConditionWarning {
  /// The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  final pulumi.Input<int> threshold;

  /// Creates a new [MultiLocationAlertConditionWarning].
  /// [threshold] The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  const MultiLocationAlertConditionWarning({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory MultiLocationAlertConditionWarning.fromMap(Map<String, dynamic> map) {
    return MultiLocationAlertConditionWarning(
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
    );
  }
}

