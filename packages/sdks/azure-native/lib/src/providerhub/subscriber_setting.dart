// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_rule.dart';

class SubscriberSetting {
  /// The filter rules.
  final pulumi.Input<List<FilterRule>>? filterRules;

  /// Creates a new [SubscriberSetting].
  /// [filterRules] The filter rules.
  const SubscriberSetting({
    this.filterRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterRules': ?pulumi.Input.mapOptionalInputValue<List<FilterRule>, List<Map<String, dynamic>>>(filterRules, (value) => pulumi.Input.encodeList<FilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubscriberSetting.fromMap(Map<String, dynamic> map) {
    return SubscriberSetting(
      filterRules: (() { final guardedValue = map['filterRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterRule>(guardedValue, (value) => FilterRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
