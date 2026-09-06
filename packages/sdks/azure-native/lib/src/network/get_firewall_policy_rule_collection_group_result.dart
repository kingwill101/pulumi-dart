// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallPolicyRuleCollectionGroup.
class GetFirewallPolicyRuleCollectionGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  final int? priority;
  /// The provisioning state of the firewall policy rule collection group resource.
  final String? provisioningState;
  /// Group of Firewall Policy rule collections.
  final List<dynamic>? ruleCollections;
  /// A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  final String? size;
  /// Rule Group type.
  final String? type;

  /// Creates a new [GetFirewallPolicyRuleCollectionGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Collection Group resource.
  /// [provisioningState] The provisioning state of the firewall policy rule collection group resource.
  /// [ruleCollections] Group of Firewall Policy rule collections.
  /// [size] A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  /// [type] Rule Group type.
  const GetFirewallPolicyRuleCollectionGroupResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.priority,
    this.provisioningState,
    this.ruleCollections,
    this.size,
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
      'ruleCollections': ?ruleCollections,
      'size': ?size,
      'type': ?type,
    };
  }

  factory GetFirewallPolicyRuleCollectionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleCollectionGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleCollections: (() { final guardedValue = map['ruleCollections']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
