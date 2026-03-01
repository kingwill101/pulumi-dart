// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleNrtEventGrouping {
  /// The aggregation type of grouping the events. Possible values are `AlertPerResult` and `SingleAlert`.
  final String aggregationMethod;

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
      aggregationMethod: map['aggregationMethod'] as String,
    );
  }
}

