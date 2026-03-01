// ignore_for_file: unused_element, unnecessary_cast


/// Rule condition of type network.
class NetworkRuleCondition {
  /// Description of the rule condition.
  final String? description;
  /// List of destination IP addresses or Service Tags.
  final List<String>? destinationAddresses;
  /// List of destination IpGroups for this rule.
  final List<String>? destinationIpGroups;
  /// List of destination ports.
  final List<String>? destinationPorts;
  /// Array of FirewallPolicyRuleConditionNetworkProtocols.
  final List<String>? ipProtocols;
  /// Name of the rule condition.
  final String? name;
  /// Rule Condition Type.
  /// Expected value is 'NetworkRuleCondition'.
  final String ruleConditionType;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;

  /// Creates a new [NetworkRuleCondition].
  /// [description] Description of the rule condition.
  /// [destinationAddresses] List of destination IP addresses or Service Tags.
  /// [destinationIpGroups] List of destination IpGroups for this rule.
  /// [destinationPorts] List of destination ports.
  /// [ipProtocols] Array of FirewallPolicyRuleConditionNetworkProtocols.
  /// [name] Name of the rule condition.
  /// [ruleConditionType] Rule Condition Type.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  NetworkRuleCondition({
    this.description,
    this.destinationAddresses,
    this.destinationIpGroups,
    this.destinationPorts,
    this.ipProtocols,
    this.name,
    required this.ruleConditionType,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationIpGroups': ?destinationIpGroups,
      'destinationPorts': ?destinationPorts,
      'ipProtocols': ?ipProtocols,
      'name': ?name,
      'ruleConditionType': ruleConditionType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory NetworkRuleCondition.fromMap(Map<String, dynamic> map) {
    return NetworkRuleCondition(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : (map['destinationIpGroups'] as List).cast<String>(),
      destinationPorts: map['destinationPorts'] == null ? null : (map['destinationPorts'] as List).cast<String>(),
      ipProtocols: map['ipProtocols'] == null ? null : (map['ipProtocols'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      ruleConditionType: map['ruleConditionType'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
    );
  }
}

