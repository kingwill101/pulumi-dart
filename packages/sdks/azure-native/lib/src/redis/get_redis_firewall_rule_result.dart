// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRedisFirewallRule.
class GetRedisFirewallRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// highest IP address included in the range
  final String? endIP;
  /// resource ID (of the firewall rule)
  final String? id;
  /// name of the firewall rule
  final String? name;
  /// lowest IP address included in the range
  final String? startIP;
  /// type (of the firewall rule resource = 'Microsoft.Cache/redis/firewallRule')
  final String? type;

  /// Creates a new [GetRedisFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIP] highest IP address included in the range
  /// [id] resource ID (of the firewall rule)
  /// [name] name of the firewall rule
  /// [startIP] lowest IP address included in the range
  /// [type] type (of the firewall rule resource = 'Microsoft.Cache/redis/firewallRule')
  const GetRedisFirewallRuleResult({
    this.azureApiVersion,
    this.endIP,
    this.id,
    this.name,
    this.startIP,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'endIP': ?endIP,
      'id': ?id,
      'name': ?name,
      'startIP': ?startIP,
      'type': ?type,
    };
  }

  factory GetRedisFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRedisFirewallRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endIP: (() { final guardedValue = map['endIP']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startIP: (() { final guardedValue = map['startIP']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
