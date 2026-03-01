// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayWafConfigurationDisabledRuleGroup {
  /// The rule group where specific rules are disabled.
  final String ruleGroupName;
  /// A list of rules which will be disabled in that group.
  final List<int> rules;

  /// Creates a new [GetApplicationGatewayWafConfigurationDisabledRuleGroup].
  /// [ruleGroupName] The rule group where specific rules are disabled.
  /// [rules] A list of rules which will be disabled in that group.
  GetApplicationGatewayWafConfigurationDisabledRuleGroup({
    required this.ruleGroupName,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': rules,
    };
  }

  factory GetApplicationGatewayWafConfigurationDisabledRuleGroup.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayWafConfigurationDisabledRuleGroup(
      ruleGroupName: map['ruleGroupName'] as String,
      rules: (map['rules'] as List).cast<int>(),
    );
  }
}

