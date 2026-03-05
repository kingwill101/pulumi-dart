// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRedisFirewallRule.
class GetRedisFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// highest IP address included in the range
  final String endIP;

  /// resource ID (of the firewall rule)
  final String id;

  /// name of the firewall rule
  final String name;

  /// lowest IP address included in the range
  final String startIP;

  /// type (of the firewall rule resource = 'Microsoft.Cache/redis/firewallRule')
  final String type;

  /// Creates a new [GetRedisFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIP] highest IP address included in the range
  /// [id] resource ID (of the firewall rule)
  /// [name] name of the firewall rule
  /// [startIP] lowest IP address included in the range
  /// [type] type (of the firewall rule resource = 'Microsoft.Cache/redis/firewallRule')
  GetRedisFirewallRuleResult({
    required this.azureApiVersion,
    required this.endIP,
    required this.id,
    required this.name,
    required this.startIP,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endIP': endIP,
      'id': id,
      'name': name,
      'startIP': startIP,
      'type': type,
    };
  }

  factory GetRedisFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRedisFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIP: map['endIP'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      startIP: map['startIP'] as String,
      type: map['type'] as String,
    );
  }
}
