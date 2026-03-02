// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutboundFirewallRule resources.
class OutboundFirewallRuleState {
  /// The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;

  /// Creates a new [OutboundFirewallRuleState].
  /// [name] The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created.
  /// [serverId] The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created.
  OutboundFirewallRuleState({
    this.name,
    this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serverId': ?serverId,
    };
  }

  factory OutboundFirewallRuleState.fromMap(Map<String, dynamic> map) {
    return OutboundFirewallRuleState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as String).input(),
    );
  }
}

