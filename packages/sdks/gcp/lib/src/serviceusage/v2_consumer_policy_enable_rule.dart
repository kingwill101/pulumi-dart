// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2ConsumerPolicyEnableRule {
  /// (Optional): List of service names to be enabled in the format of services/&lt;service_name&gt;
  final pulumi.Input<List<String>?>? services;

  /// Creates a new [V2ConsumerPolicyEnableRule].
  /// [services] (Optional): List of service names to be enabled in the format of services/&lt;service_name&gt;
  const V2ConsumerPolicyEnableRule({
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services': ?services,
    };
  }

  factory V2ConsumerPolicyEnableRule.fromMap(Map<String, dynamic> map) {
    return V2ConsumerPolicyEnableRule(
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
