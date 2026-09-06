// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutboundFirewallRule.
class GetOutboundFirewallRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The state of the outbound rule.
  final String? provisioningState;
  /// Resource type.
  final String? type;

  /// Creates a new [GetOutboundFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The state of the outbound rule.
  /// [type] Resource type.
  const GetOutboundFirewallRuleResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory GetOutboundFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetOutboundFirewallRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
