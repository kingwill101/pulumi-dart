// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by buildStackMatchRule.
class BuildStackMatchRuleResult {
  /// The match rule, as the Pulumi Cloud expression a policy group's match rule field takes.
  final Map<String, dynamic>? matchRule;

  /// Creates a new [BuildStackMatchRuleResult].
  /// [matchRule] The match rule, as the Pulumi Cloud expression a policy group's match rule field takes.
  const BuildStackMatchRuleResult({
    this.matchRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchRule': ?matchRule,
    };
  }

  factory BuildStackMatchRuleResult.fromMap(Map<String, dynamic> map) {
    return BuildStackMatchRuleResult(
      matchRule: (() { final guardedValue = map['matchRule']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
