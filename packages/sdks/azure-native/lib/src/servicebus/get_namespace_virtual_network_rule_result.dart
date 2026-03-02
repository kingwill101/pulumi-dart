// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceVirtualNetworkRule.
class GetNamespaceVirtualNetworkRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// Resource type
  final String type;
  /// Resource ID of Virtual Network Subnet
  final String? virtualNetworkSubnetId;

  /// Creates a new [GetNamespaceVirtualNetworkRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [type] Resource type
  /// [virtualNetworkSubnetId] Resource ID of Virtual Network Subnet
  GetNamespaceVirtualNetworkRuleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.type,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'type': type,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory GetNamespaceVirtualNetworkRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceVirtualNetworkRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : map['virtualNetworkSubnetId']! as String,
    );
  }
}

