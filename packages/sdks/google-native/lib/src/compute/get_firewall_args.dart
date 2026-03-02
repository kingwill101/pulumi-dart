// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_firewall_args_doc}
class GetFirewallArgs {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallArgs].
  /// [firewall] Required.
  /// [project] Optional.
  GetFirewallArgs({
    required this.firewall,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewall': firewall,
      'project': ?project,
    };
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      firewall: (map['firewall'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

