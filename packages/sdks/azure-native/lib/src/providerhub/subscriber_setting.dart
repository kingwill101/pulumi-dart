// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_rule.dart';

class SubscriberSetting {
  /// The filter rules.
  final List<FilterRule>? filterRules;

  /// Creates a new [SubscriberSetting].
  /// [filterRules] The filter rules.
  SubscriberSetting({
    this.filterRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterRules': ?filterRules == null ? null : pulumi.Input.encodeList<FilterRule, Map<String, dynamic>>(filterRules!, (value) => value.toMap()),
    };
  }

  factory SubscriberSetting.fromMap(Map<String, dynamic> map) {
    return SubscriberSetting(
      filterRules: map['filterRules'] == null ? null : pulumi.Input.decodeList<FilterRule>(map['filterRules'], (value) => FilterRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

