// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallsFirewallApplyTo {
  final pulumi.Input<String> labelSelector;
  final pulumi.Input<int> server;

  /// Creates a new [GetFirewallsFirewallApplyTo].
  /// [labelSelector] Required.
  /// [server] Required.
  const GetFirewallsFirewallApplyTo({
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
      labelSelector: pulumi.Input.fromValue(map['labelSelector'] as String),
      server: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['server'])),
    );
  }
}
