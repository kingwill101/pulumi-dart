// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_log_rule_filtering_tag.dart';

class TagRulesLogRule {
  /// Filtering tag for the log rule. A `filteringTag` block as defined below.
  final pulumi.Input<List<TagRulesLogRuleFilteringTag>>? filteringTags;
  /// Send Activity logs. The default value is `false`.
  final pulumi.Input<bool>? sendActivityLogsEnabled;
  /// Send Azure Active Directory logs. The default value is `false`.
  final pulumi.Input<bool>? sendAzureActiveDirectoryLogsEnabled;
  /// Send Subscription logs. The default value is `false`.
  final pulumi.Input<bool>? sendSubscriptionLogsEnabled;

  /// Creates a new [TagRulesLogRule].
  /// [filteringTags] Filtering tag for the log rule. A `filteringTag` block as defined below.
  /// [sendActivityLogsEnabled] Send Activity logs. The default value is `false`.
  /// [sendAzureActiveDirectoryLogsEnabled] Send Azure Active Directory logs. The default value is `false`.
  /// [sendSubscriptionLogsEnabled] Send Subscription logs. The default value is `false`.
  const TagRulesLogRule({
    this.filteringTags,
    this.sendActivityLogsEnabled,
    this.sendAzureActiveDirectoryLogsEnabled,
    this.sendSubscriptionLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<TagRulesLogRuleFilteringTag>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<TagRulesLogRuleFilteringTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendActivityLogsEnabled': ?sendActivityLogsEnabled,
      'sendAzureActiveDirectoryLogsEnabled': ?sendAzureActiveDirectoryLogsEnabled,
      'sendSubscriptionLogsEnabled': ?sendSubscriptionLogsEnabled,
    };
  }

  factory TagRulesLogRule.fromMap(Map<String, dynamic> map) {
    return TagRulesLogRule(
      filteringTags: (() { final guardedValue = map['filteringTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagRulesLogRuleFilteringTag>(guardedValue, (value) => TagRulesLogRuleFilteringTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sendActivityLogsEnabled: (() { final guardedValue = map['sendActivityLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendAzureActiveDirectoryLogsEnabled: (() { final guardedValue = map['sendAzureActiveDirectoryLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendSubscriptionLogsEnabled: (() { final guardedValue = map['sendSubscriptionLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
