// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceVirtualNetworkRule.
class GetNamespaceVirtualNetworkRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// Resource type
  final String? type;
  /// Resource ID of Virtual Network Subnet
  final String? virtualNetworkSubnetId;

  /// Creates a new [GetNamespaceVirtualNetworkRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [type] Resource type
  /// [virtualNetworkSubnetId] Resource ID of Virtual Network Subnet
  const GetNamespaceVirtualNetworkRuleResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.type,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory GetNamespaceVirtualNetworkRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceVirtualNetworkRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
