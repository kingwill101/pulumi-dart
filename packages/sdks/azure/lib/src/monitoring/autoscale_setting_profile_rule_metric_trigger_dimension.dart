// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingProfileRuleMetricTriggerDimension {
  /// The name of the dimension.
  final pulumi.Input<String> name;
  /// The dimension operator. Possible values are `Equals` and `NotEquals`. `Equals` means being equal to any of the values. `NotEquals` means being not equal to any of the values.
  final pulumi.Input<String> operator;
  /// A list of dimension values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AutoscaleSettingProfileRuleMetricTriggerDimension].
  /// [name] The name of the dimension.
  /// [operator] The dimension operator. Possible values are `Equals` and `NotEquals`. `Equals` means being equal to any of the values. `NotEquals` means being not equal to any of the values.
  /// [values] A list of dimension values.
  AutoscaleSettingProfileRuleMetricTriggerDimension({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory AutoscaleSettingProfileRuleMetricTriggerDimension.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileRuleMetricTriggerDimension(
      name: (map['name'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

