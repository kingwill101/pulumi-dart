// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalysisRuleAnnotatorSelectorQaConfigScorecardList {
  /// List of QaScorecardRevisions.
  final pulumi.Input<List<String>>? qaScorecardRevisions;

  /// Creates a new [AnalysisRuleAnnotatorSelectorQaConfigScorecardList].
  /// [qaScorecardRevisions] List of QaScorecardRevisions.
  const AnalysisRuleAnnotatorSelectorQaConfigScorecardList({
    this.qaScorecardRevisions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qaScorecardRevisions': ?qaScorecardRevisions,
    };
  }

  factory AnalysisRuleAnnotatorSelectorQaConfigScorecardList.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelectorQaConfigScorecardList(
      qaScorecardRevisions: (() { final guardedValue = map['qaScorecardRevisions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

