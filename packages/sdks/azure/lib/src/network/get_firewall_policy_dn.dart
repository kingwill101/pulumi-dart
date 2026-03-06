// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyDn {
  final pulumi.Input<bool> networkRuleFqdnEnabled;
  final pulumi.Input<bool> proxyEnabled;
  final pulumi.Input<List<String>> servers;

  /// Creates a new [GetFirewallPolicyDn].
  /// [networkRuleFqdnEnabled] Required.
  /// [proxyEnabled] Required.
  /// [servers] Required.
  const GetFirewallPolicyDn({
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
      networkRuleFqdnEnabled: pulumi.Input.fromValue(map['networkRuleFqdnEnabled'] as bool),
      proxyEnabled: pulumi.Input.fromValue(map['proxyEnabled'] as bool),
      servers: pulumi.Input.fromValue((map['servers'] as List).cast<String>()),
    );
  }
}

