// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_log_rule_filtering_tag.dart';

class TagRulesLogRule {
  /// Filtering tag for the log rule. A `filtering_tag` block as defined below.
  final pulumi.Input<List<TagRulesLogRuleFilteringTag>>? filteringTags;
  /// Send Activity logs. The default value is `false`.
  final pulumi.Input<bool>? sendActivityLogsEnabled;
  /// Send Azure Active Directory logs. The default value is `false`.
  final pulumi.Input<bool>? sendAzureActiveDirectoryLogsEnabled;
  /// Send Subscription logs. The default value is `false`.
  final pulumi.Input<bool>? sendSubscriptionLogsEnabled;

  /// Creates a new [TagRulesLogRule].
  /// [filteringTags] Filtering tag for the log rule. A `filtering_tag` block as defined below.
  /// [sendActivityLogsEnabled] Send Activity logs. The default value is `false`.
  /// [sendAzureActiveDirectoryLogsEnabled] Send Azure Active Directory logs. The default value is `false`.
  /// [sendSubscriptionLogsEnabled] Send Subscription logs. The default value is `false`.
  TagRulesLogRule({
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
      filteringTags: map['filteringTags'] == null ? null : (pulumi.Input.decodeList<TagRulesLogRuleFilteringTag>(map['filteringTags']!, (value) => TagRulesLogRuleFilteringTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sendActivityLogsEnabled: map['sendActivityLogsEnabled'] == null ? null : (map['sendActivityLogsEnabled']! as bool).input(),
      sendAzureActiveDirectoryLogsEnabled: map['sendAzureActiveDirectoryLogsEnabled'] == null ? null : (map['sendAzureActiveDirectoryLogsEnabled']! as bool).input(),
      sendSubscriptionLogsEnabled: map['sendSubscriptionLogsEnabled'] == null ? null : (map['sendSubscriptionLogsEnabled']! as bool).input(),
    );
  }
}

