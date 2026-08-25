// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FindingsRefinementDeploymentDetectionExclusionApplication {
  /// The CuratedRuleSets this detection exclusion applies to.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/curatedRuleSetCategories/{category}/curatedRuleSets/{rule_set}
  final pulumi.Input<List<String>?>? curatedRuleSets;
  /// The CuratedRules this detection exclusion applies to.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/curatedRules/{rule}
  final pulumi.Input<List<String>?>? curatedRules;
  /// (Output)
  /// The deleted CuratedRuleSets this detection exclusion applies to.
  /// Indicates to the customer that the detection exclusion no longer applies
  /// to the rule sets, so the detection exclusion should be updated.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/curatedRuleSetCategories/{category}/curatedRuleSets/{rule_set}
  final pulumi.Input<List<String>?>? deletedCuratedRuleSets;
  /// The Rules this detection exclusion applies to.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  final pulumi.Input<List<String>?>? rules;

  /// Creates a new [FindingsRefinementDeploymentDetectionExclusionApplication].
  /// [curatedRuleSets] The CuratedRuleSets this detection exclusion applies to.
  /// [curatedRules] The CuratedRules this detection exclusion applies to.
  /// [deletedCuratedRuleSets] (Output)
  /// [rules] The Rules this detection exclusion applies to.
  const FindingsRefinementDeploymentDetectionExclusionApplication({
    this.curatedRuleSets,
    this.curatedRules,
    this.deletedCuratedRuleSets,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curatedRuleSets': ?curatedRuleSets,
      'curatedRules': ?curatedRules,
      'deletedCuratedRuleSets': ?deletedCuratedRuleSets,
      'rules': ?rules,
    };
  }

  factory FindingsRefinementDeploymentDetectionExclusionApplication.fromMap(Map<String, dynamic> map) {
    return FindingsRefinementDeploymentDetectionExclusionApplication(
      curatedRuleSets: (() { final guardedValue = map['curatedRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      curatedRules: (() { final guardedValue = map['curatedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletedCuratedRuleSets: (() { final guardedValue = map['deletedCuratedRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
