// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOutboundFirewallRule.
class GetOutboundFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// The state of the outbound rule.
  final String provisioningState;

  /// Resource type.
  final String type;

  /// Creates a new [GetOutboundFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The state of the outbound rule.
  /// [type] Resource type.
  GetOutboundFirewallRuleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetOutboundFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetOutboundFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}
