// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dns_firewall_get_dns_firewall_args_doc}
/// Arguments for getDnsFirewall.
/// {@endtemplate}
/// {@macro pulumi_index_get_dns_firewall_get_dns_firewall_args_doc}
class GetDnsFirewallArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Identifier.
  final pulumi.Input<String> dnsFirewallId;

  /// Creates a new [GetDnsFirewallArgs].
  /// [accountId] Identifier.
  /// [dnsFirewallId] Identifier.
  const GetDnsFirewallArgs({
    this.accountId,
    required this.dnsFirewallId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'dnsFirewallId': dnsFirewallId,
    };
  }

  factory GetDnsFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsFirewallArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsFirewallId: pulumi.Input.fromValue(map['dnsFirewallId'] as String),
    );
  }
}
