// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallRule.
class GetFirewallRuleResult {
  /// The action to apply to a matched request. The `log` action is only available on an Enterprise plan.
  /// Available values: "block", "challenge", "js*challenge", "managed*challenge", "allow", "log", "bypass".
  final String? action;
  /// An informative summary of the firewall rule.
  final String? description;
  /// The unique identifier of the firewall rule.
  final String? id;
  /// When true, indicates that the firewall rule is currently paused.
  final bool? paused;
  /// The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  final double? priority;
  final List<String>? products;
  /// A short reference tag. Allows you to select related firewall rules.
  final String? ref;
  /// The unique identifier of the firewall rule.
  final String? ruleId;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetFirewallRuleResult].
  /// [action] The action to apply to a matched request. The `log` action is only available on an Enterprise plan.
  /// [description] An informative summary of the firewall rule.
  /// [id] The unique identifier of the firewall rule.
  /// [paused] When true, indicates that the firewall rule is currently paused.
  /// [priority] The priority of the rule. Optional value used to define the processing order. A lower number indicates a higher priority. If not provided, rules with a defined priority will be processed before rules without a priority.
  /// [products] Optional.
  /// [ref] A short reference tag. Allows you to select related firewall rules.
  /// [ruleId] The unique identifier of the firewall rule.
  /// [zoneId] Defines an identifier.
  const GetFirewallRuleResult({
    this.action,
    this.description,
    this.id,
    this.paused,
    this.priority,
    this.products,
    this.ref,
    this.ruleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'id': ?id,
      'paused': ?paused,
      'priority': ?priority,
      'products': ?products,
      'ref': ?ref,
      'ruleId': ?ruleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      products: (() { final guardedValue = map['products']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ref: (() { final guardedValue = map['ref']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
