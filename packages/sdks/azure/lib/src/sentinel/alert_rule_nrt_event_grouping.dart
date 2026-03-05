// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertRuleNrtEventGrouping {
  /// The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  final pulumi.Input<String> aggregationMethod;

  /// Creates a new [AlertRuleNrtEventGrouping].
  /// [aggregationMethod] The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  AlertRuleNrtEventGrouping({
    required this.aggregationMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationMethod': aggregationMethod,
    };
  }

  factory AlertRuleNrtEventGrouping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtEventGrouping(
      aggregationMethod: pulumi.Input.fromValue(map['aggregationMethod'] as String),
    );
  }
}

