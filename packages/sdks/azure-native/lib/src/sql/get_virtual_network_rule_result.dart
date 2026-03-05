// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkRule.
class GetVirtualNetworkRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  final bool? ignoreMissingVnetServiceEndpoint;
  /// Resource name.
  final String name;
  /// Virtual Network Rule State
  final String state;
  /// Resource type.
  final String type;
  /// The ARM resource id of the virtual network subnet.
  final String virtualNetworkSubnetId;

  /// Creates a new [GetVirtualNetworkRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [ignoreMissingVnetServiceEndpoint] Create firewall rule before the virtual network has vnet service endpoint enabled.
  /// [name] Resource name.
  /// [state] Virtual Network Rule State
  /// [type] Resource type.
  /// [virtualNetworkSubnetId] The ARM resource id of the virtual network subnet.
  GetVirtualNetworkRuleResult({
    required this.azureApiVersion,
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
    required this.name,
    required this.state,
    required this.type,
    required this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'name': name,
      'state': state,
      'type': type,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetVirtualNetworkRuleResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      ignoreMissingVnetServiceEndpoint: (() { final guardedValue = map['ignoreMissingVnetServiceEndpoint']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

