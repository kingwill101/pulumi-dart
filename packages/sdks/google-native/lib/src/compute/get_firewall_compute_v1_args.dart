// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_firewall_compute_v1_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_firewall_compute_v1_args_doc}
class GetFirewallComputeV1Args {
  final pulumi.Input<String> firewall;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallComputeV1Args].
  /// [firewall] Required.
  /// [project] Optional.
  const GetFirewallComputeV1Args({
    required this.firewall,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewall': firewall,
      'project': ?project,
    };
  }

  factory GetFirewallComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetFirewallComputeV1Args(
      firewall: pulumi.Input.fromValue(map['firewall'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
