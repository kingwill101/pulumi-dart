// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ForwardingRuleServiceDirectoryRegistrations {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String>? namespace;
  /// Service Directory service to register the forwarding rule under.
  final pulumi.Input<String>? service;

  /// Creates a new [ForwardingRuleServiceDirectoryRegistrations].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  ForwardingRuleServiceDirectoryRegistrations({
    this.namespace,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
      'service': ?service,
    };
  }

  factory ForwardingRuleServiceDirectoryRegistrations.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleServiceDirectoryRegistrations(
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

