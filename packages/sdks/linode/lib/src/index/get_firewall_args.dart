// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_firewall_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_get_firewall_args_doc}
class GetFirewallArgs {
  /// The Firewall's ID.
  final pulumi.Input<int> id;

  /// Creates a new [GetFirewallArgs].
  /// [id] The Firewall's ID.
  GetFirewallArgs({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(id: pulumi.Input.fromValue(map['id'] as int));
  }
}
