// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleScheduledEventGrouping {
  /// The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  final pulumi.Input<String> aggregationMethod;

  /// Creates a new [AlertRuleScheduledEventGrouping].
  /// [aggregationMethod] The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  AlertRuleScheduledEventGrouping({required this.aggregationMethod});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'aggregationMethod': aggregationMethod};
  }

  factory AlertRuleScheduledEventGrouping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledEventGrouping(
      aggregationMethod: pulumi.Input.fromValue(
        map['aggregationMethod'] as String,
      ),
    );
  }
}
