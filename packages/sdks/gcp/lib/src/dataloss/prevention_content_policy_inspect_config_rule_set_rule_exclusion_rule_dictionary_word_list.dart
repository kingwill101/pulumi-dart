// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one
  /// phrase and every phrase must contain at least 2 characters that are letters or digits.
  final pulumi.Input<List<String>> words;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'words': words,
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionaryWordList(
      words: pulumi.Input.fromValue((map['words'] as List).cast<String>()),
    );
  }
}
