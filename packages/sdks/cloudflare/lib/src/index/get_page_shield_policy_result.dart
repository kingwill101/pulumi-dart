// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPageShieldPolicy.
class GetPageShieldPolicyResult {
  /// The action to take if the expression matches
  /// Available values: "allow", "log", "add*reporting*directives".
  final String? action;
  /// A description for the policy
  final String? description;
  /// Whether the policy is enabled
  final bool? enabled;
  /// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  final String? expression;
  /// Identifier
  final String? id;
  /// Identifier
  final String? policyId;
  /// The policy which will be applied
  final String? value;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetPageShieldPolicyResult].
  /// [action] The action to take if the expression matches
  /// [description] A description for the policy
  /// [enabled] Whether the policy is enabled
  /// [expression] The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  /// [id] Identifier
  /// [policyId] Identifier
  /// [value] The policy which will be applied
  /// [zoneId] Identifier
  const GetPageShieldPolicyResult({
    this.action,
    this.description,
    this.enabled,
    this.expression,
    this.id,
    this.policyId,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'enabled': ?enabled,
      'expression': ?expression,
      'id': ?id,
      'policyId': ?policyId,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldPolicyResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
