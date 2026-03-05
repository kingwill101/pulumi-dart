// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_set.dart';

/// The source event types which evaluate the security automation set of rules. For example - security alerts and security assessments. To learn more about the supported security events data models schemas - please visit https://aka.ms/ASCAutomationSchemas.
class AutomationSource {
  /// A valid event source type.
  final pulumi.Input<String>? eventSource;
  /// A set of rules which evaluate upon event interception. A logical disjunction is applied between defined rule sets (logical 'or').
  final pulumi.Input<List<AutomationRuleSet>>? ruleSets;

  /// Creates a new [AutomationSource].
  /// [eventSource] A valid event source type.
  /// [ruleSets] A set of rules which evaluate upon event interception. A logical disjunction is applied between defined rule sets (logical 'or').
  AutomationSource({
    this.eventSource,
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSource': ?eventSource,
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<AutomationRuleSet>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<AutomationRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationSource.fromMap(Map<String, dynamic> map) {
    return AutomationSource(
      eventSource: (() { final guardedValue = map['eventSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRuleSet>(guardedValue, (value) => AutomationRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

