// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetForwardingRulesRuleServiceDirectoryRegistration {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String> namespace;
  /// Service Directory service to register the forwarding rule under.
  final pulumi.Input<String> service;

  /// Creates a new [GetForwardingRulesRuleServiceDirectoryRegistration].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  const GetForwardingRulesRuleServiceDirectoryRegistration({
    required this.namespace,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'service': service,
    };
  }

  factory GetForwardingRulesRuleServiceDirectoryRegistration.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesRuleServiceDirectoryRegistration(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
