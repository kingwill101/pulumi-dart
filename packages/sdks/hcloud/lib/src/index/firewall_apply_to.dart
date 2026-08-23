// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallApplyTo {
  /// Label Selector to select servers the firewall should be applied to (only one
  /// of `server` and `labelSelector`can be applied in one block)
  final pulumi.Input<String>? labelSelector;
  /// ID of the server you want to apply the firewall to (only one of `server`
  /// and `labelSelector`can be applied in one block)
  final pulumi.Input<int>? server;

  /// Creates a new [FirewallApplyTo].
  /// [labelSelector] Label Selector to select servers the firewall should be applied to (only one
  /// [server] ID of the server you want to apply the firewall to (only one of `server`
  const FirewallApplyTo({
    this.labelSelector,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?labelSelector,
      'server': ?server,
    };
  }

  factory FirewallApplyTo.fromMap(Map<String, dynamic> map) {
    return FirewallApplyTo(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
