// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_rule_annotator_selector_qa_config_scorecard_list.dart';

class AnalysisRuleAnnotatorSelectorQaConfig {
  /// Container for a list of scorecards.
  /// Structure is documented below.
  final pulumi.Input<AnalysisRuleAnnotatorSelectorQaConfigScorecardList>? scorecardList;

  /// Creates a new [AnalysisRuleAnnotatorSelectorQaConfig].
  /// [scorecardList] Container for a list of scorecards.
  AnalysisRuleAnnotatorSelectorQaConfig({
    this.scorecardList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scorecardList': ?pulumi.Input.mapOptionalInputValue<AnalysisRuleAnnotatorSelectorQaConfigScorecardList, Map<String, dynamic>>(scorecardList, (value) => value.toMap()),
    };
  }

  factory AnalysisRuleAnnotatorSelectorQaConfig.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelectorQaConfig(
      scorecardList: (() { final guardedValue = map['scorecardList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisRuleAnnotatorSelectorQaConfigScorecardList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

