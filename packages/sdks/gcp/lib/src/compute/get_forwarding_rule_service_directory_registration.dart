// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetForwardingRuleServiceDirectoryRegistration {
  /// Service Directory namespace to register the forwarding rule under.
  final pulumi.Input<String> namespace;
  /// Service Directory service to register the forwarding rule under.
  final pulumi.Input<String> service;

  /// Creates a new [GetForwardingRuleServiceDirectoryRegistration].
  /// [namespace] Service Directory namespace to register the forwarding rule under.
  /// [service] Service Directory service to register the forwarding rule under.
  GetForwardingRuleServiceDirectoryRegistration({
    required this.namespace,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'service': service,
    };
  }

  factory GetForwardingRuleServiceDirectoryRegistration.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleServiceDirectoryRegistration(
      namespace: (map['namespace'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

