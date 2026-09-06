// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpFirewallRule.
class GetIpFirewallRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  final String? endIpAddress;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Resource provisioning state
  final String? provisioningState;
  /// The start IP address of the firewall rule. Must be IPv4 format
  final String? startIpAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetIpFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] Resource provisioning state
  /// [startIpAddress] The start IP address of the firewall rule. Must be IPv4 format
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIpFirewallRuleResult({
    this.azureApiVersion,
    this.endIpAddress,
    this.id,
    this.name,
    this.provisioningState,
    this.startIpAddress,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'endIpAddress': ?endIpAddress,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'startIpAddress': ?startIpAddress,
      'type': ?type,
    };
  }

  factory GetIpFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetIpFirewallRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endIpAddress: (() { final guardedValue = map['endIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startIpAddress: (() { final guardedValue = map['startIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
