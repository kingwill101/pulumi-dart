// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallPolicyDn {
  final bool networkRuleFqdnEnabled;
  final bool proxyEnabled;
  final List<String> servers;

  /// Creates a new [GetFirewallPolicyDn].
  /// [networkRuleFqdnEnabled] Required.
  /// [proxyEnabled] Required.
  /// [servers] Required.
  GetFirewallPolicyDn({
    required this.networkRuleFqdnEnabled,
    required this.proxyEnabled,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkRuleFqdnEnabled': networkRuleFqdnEnabled,
      'proxyEnabled': proxyEnabled,
      'servers': servers,
    };
  }

  factory GetFirewallPolicyDn.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyDn(
      networkRuleFqdnEnabled: map['networkRuleFqdnEnabled'] as bool,
      proxyEnabled: map['proxyEnabled'] as bool,
      servers: (map['servers'] as List).cast<String>(),
    );
  }
}

