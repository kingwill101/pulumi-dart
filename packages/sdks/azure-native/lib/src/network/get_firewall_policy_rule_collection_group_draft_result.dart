// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallPolicyRuleCollectionGroupDraft.
class GetFirewallPolicyRuleCollectionGroupDraftResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  final int? priority;
  /// Group of Firewall Policy rule collections.
  final List<dynamic>? ruleCollections;
  /// A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  final String? size;
  /// Rule Group type.
  final String? type;

  /// Creates a new [GetFirewallPolicyRuleCollectionGroupDraftResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Collection Group resource.
  /// [ruleCollections] Group of Firewall Policy rule collections.
  /// [size] A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  /// [type] Rule Group type.
  const GetFirewallPolicyRuleCollectionGroupDraftResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.priority,
    this.ruleCollections,
    this.size,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'ruleCollections': ?ruleCollections,
      'size': ?size,
      'type': ?type,
    };
  }

  factory GetFirewallPolicyRuleCollectionGroupDraftResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleCollectionGroupDraftResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ruleCollections: (() { final guardedValue = map['ruleCollections']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
