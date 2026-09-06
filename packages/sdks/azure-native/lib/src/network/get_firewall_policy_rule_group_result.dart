// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallPolicyRuleGroup.
class GetFirewallPolicyRuleGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Priority of the Firewall Policy Rule Group resource.
  final int? priority;
  /// The provisioning state of the firewall policy rule group resource.
  final String? provisioningState;
  /// Group of Firewall Policy rules.
  final List<dynamic>? rules;
  /// Rule Group type.
  final String? type;

  /// Creates a new [GetFirewallPolicyRuleGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Group resource.
  /// [provisioningState] The provisioning state of the firewall policy rule group resource.
  /// [rules] Group of Firewall Policy rules.
  /// [type] Rule Group type.
  const GetFirewallPolicyRuleGroupResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.priority,
    this.provisioningState,
    this.rules,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'provisioningState': ?provisioningState,
      'rules': ?rules,
      'type': ?type,
    };
  }

  factory GetFirewallPolicyRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
