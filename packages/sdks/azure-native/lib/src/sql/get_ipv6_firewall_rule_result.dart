// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIPv6FirewallRule.
class GetIPv6FirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The end IP address of the firewall rule. Must be IPv6 format. Must be greater than or equal to startIpv6Address.
  final String? endIPv6Address;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String? name;
  /// The start IP address of the firewall rule. Must be IPv6 format.
  final String? startIPv6Address;
  /// Resource type.
  final String type;

  /// Creates a new [GetIPv6FirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIPv6Address] The end IP address of the firewall rule. Must be IPv6 format. Must be greater than or equal to startIpv6Address.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [startIPv6Address] The start IP address of the firewall rule. Must be IPv6 format.
  /// [type] Resource type.
  GetIPv6FirewallRuleResult({
    required this.azureApiVersion,
    this.endIPv6Address,
    required this.id,
    this.name,
    this.startIPv6Address,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endIPv6Address': ?endIPv6Address,
      'id': id,
      'name': ?name,
      'startIPv6Address': ?startIPv6Address,
      'type': type,
    };
  }

  factory GetIPv6FirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetIPv6FirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIPv6Address: map['endIPv6Address'] == null ? null : map['endIPv6Address']! as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name']! as String,
      startIPv6Address: map['startIPv6Address'] == null ? null : map['startIPv6Address']! as String,
      type: map['type'] as String,
    );
  }
}

