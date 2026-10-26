// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildAccountMatchRule.
class BuildAccountMatchRuleResult {
  /// The match rule, as the Pulumi Cloud expression a policy group's match rule field takes.
  final Map<String, dynamic>? matchRule;

  /// Creates a new [BuildAccountMatchRuleResult].
  /// [matchRule] The match rule, as the Pulumi Cloud expression a policy group's match rule field takes.
  const BuildAccountMatchRuleResult({
    this.matchRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchRule': ?matchRule,
    };
  }

  factory BuildAccountMatchRuleResult.fromMap(Map<String, dynamic> map) {
    return BuildAccountMatchRuleResult(
      matchRule: (() { final guardedValue = map['matchRule']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
