// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFirewallRule.
class GetFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value '0.0.0.0' for all Azure-internal IP addresses.
  final String? endIpAddress;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String? name;

  /// The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' for all Azure-internal IP addresses.
  final String? startIpAddress;

  /// Resource type.
  final String type;

  /// Creates a new [GetFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value '0.0.0.0' for all Azure-internal IP addresses.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [startIpAddress] The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' for all Azure-internal IP addresses.
  /// [type] Resource type.
  GetFirewallRuleResult({
    required this.azureApiVersion,
    this.endIpAddress,
    required this.id,
    this.name,
    this.startIpAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endIpAddress': ?endIpAddress,
      'id': id,
      'name': ?name,
      'startIpAddress': ?startIpAddress,
      'type': type,
    };
  }

  factory GetFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIpAddress: (() {
        final guardedValue = map['endIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      startIpAddress: (() {
        final guardedValue = map['startIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
