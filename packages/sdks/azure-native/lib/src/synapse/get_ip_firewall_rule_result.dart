// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIpFirewallRule.
class GetIpFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  final String? endIpAddress;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Resource provisioning state
  final String provisioningState;

  /// The start IP address of the firewall rule. Must be IPv4 format
  final String? startIpAddress;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetIpFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Resource provisioning state
  /// [startIpAddress] The start IP address of the firewall rule. Must be IPv4 format
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetIpFirewallRuleResult({
    required this.azureApiVersion,
    this.endIpAddress,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.startIpAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endIpAddress': ?endIpAddress,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'startIpAddress': ?startIpAddress,
      'type': type,
    };
  }

  factory GetIpFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetIpFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIpAddress: (() {
        final guardedValue = map['endIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      startIpAddress: (() {
        final guardedValue = map['startIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
