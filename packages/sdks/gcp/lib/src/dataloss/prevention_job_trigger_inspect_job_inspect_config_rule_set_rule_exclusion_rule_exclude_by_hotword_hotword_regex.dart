// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex {
  /// The index of the submatch to extract as findings. When not specified,
  /// the entire match is returned. No more than 3 may be included.
  final pulumi.Input<List<int>>? groupIndexes;
  /// Pattern defining the regular expression. Its syntax
  /// (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  final pulumi.Input<String>? pattern;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex].
  /// [groupIndexes] The index of the submatch to extract as findings. When not specified,
  /// [pattern] Pattern defining the regular expression. Its syntax
  const PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex({
    this.groupIndexes,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIndexes': ?groupIndexes,
      'pattern': ?pattern,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex(
      groupIndexes: (() { final guardedValue = map['groupIndexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
