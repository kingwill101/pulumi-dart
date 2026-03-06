// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_source_rule_set.dart';

class AutomationSource {
  /// Type of data that will trigger this automation. Must be one of `Alerts`, `Assessments`, `AssessmentsSnapshot`, `RegulatoryComplianceAssessment`, `RegulatoryComplianceAssessmentSnapshot`, `SecureScoreControls`, `SecureScoreControlsSnapshot`, `SecureScores`, `SecureScoresSnapshot`, `SubAssessments` or `SubAssessmentsSnapshot`. Note. assessments are also referred to as recommendations
  final pulumi.Input<String> eventSource;
  /// A set of rules which evaluate upon event and data interception. This is defined in one or more `rule_set` blocks as defined below.
  ///
  /// &gt; **Note:** When multiple `rule_set` block are provided, a logical 'OR' is applied to the evaluation of them.
  final pulumi.Input<List<AutomationSourceRuleSet>>? ruleSets;

  /// Creates a new [AutomationSource].
  /// [eventSource] Type of data that will trigger this automation. Must be one of `Alerts`, `Assessments`, `AssessmentsSnapshot`, `RegulatoryComplianceAssessment`, `RegulatoryComplianceAssessmentSnapshot`, `SecureScoreControls`, `SecureScoreControlsSnapshot`, `SecureScores`, `SecureScoresSnapshot`, `SubAssessments` or `SubAssessmentsSnapshot`. Note. assessments are also referred to as recommendations
  /// [ruleSets] A set of rules which evaluate upon event and data interception. This is defined in one or more `rule_set` blocks as defined below.
  const AutomationSource({
    required this.eventSource,
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSource': eventSource,
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<AutomationSourceRuleSet>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<AutomationSourceRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutomationSource.fromMap(Map<String, dynamic> map) {
    return AutomationSource(
      eventSource: pulumi.Input.fromValue(map['eventSource'] as String),
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationSourceRuleSet>(guardedValue, (value) => AutomationSourceRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

