// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_rule_response.dart';

class SubscriberSettingResponse {
  /// The filter rules.
  final pulumi.Input<List<FilterRuleResponse>>? filterRules;

  /// Creates a new [SubscriberSettingResponse].
  /// [filterRules] The filter rules.
  const SubscriberSettingResponse({
    this.filterRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterRules': ?pulumi.Input.mapOptionalInputValue<List<FilterRuleResponse>, List<Map<String, dynamic>>>(filterRules, (value) => pulumi.Input.encodeList<FilterRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubscriberSettingResponse.fromMap(Map<String, dynamic> map) {
    return SubscriberSettingResponse(
      filterRules: (() { final guardedValue = map['filterRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterRuleResponse>(guardedValue, (value) => FilterRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

