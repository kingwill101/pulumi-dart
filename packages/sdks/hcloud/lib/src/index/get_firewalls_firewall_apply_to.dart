// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallsFirewallApplyTo {
  final pulumi.Input<String> labelSelector;
  final pulumi.Input<int> server;

  /// Creates a new [GetFirewallsFirewallApplyTo].
  /// [labelSelector] Required.
  /// [server] Required.
  GetFirewallsFirewallApplyTo({
    required this.labelSelector,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
      'server': server,
    };
  }

  factory GetFirewallsFirewallApplyTo.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallApplyTo(
      labelSelector: (map['labelSelector'] as String).input(),
      server: (map['server'] as int).input(),
    );
  }
}

