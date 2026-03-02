// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recaptchaenterprise_v1_get_firewallpolicy_args_doc}
/// Arguments for getFirewallpolicy.
/// {@endtemplate}
/// {@macro pulumi_recaptchaenterprise_v1_get_firewallpolicy_args_doc}
class GetFirewallpolicyArgs {
  final pulumi.Input<String> firewallpolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallpolicyArgs].
  /// [firewallpolicyId] Required.
  /// [project] Optional.
  GetFirewallpolicyArgs({
    required this.firewallpolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallpolicyId': firewallpolicyId,
      'project': ?project,
    };
  }

  factory GetFirewallpolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallpolicyArgs(
      firewallpolicyId: (map['firewallpolicyId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

