// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiLocationAlertConditionCritical {
  /// The minimum number of monitor locations that must be concurrently failing before an incident is opened.
  final pulumi.Input<int> threshold;

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
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
    );
  }
}

