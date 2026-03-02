// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_firewall_compute_beta_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_firewall_compute_beta_args_doc}
class GetFirewallComputeBetaArgs {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallComputeBetaArgs].
  /// [firewall] Required.
  /// [project] Optional.
  GetFirewallComputeBetaArgs({
    required this.firewall,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewall': firewall,
      'project': ?project,
    };
  }

  factory GetFirewallComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallComputeBetaArgs(
      firewall: (map['firewall'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

