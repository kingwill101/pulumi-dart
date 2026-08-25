// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSourcePscEndpoint {
  /// The full resource name of the global forwarding rule that identifies a Private Service Connect endpoint.
  /// Forwarding rule format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/forwardingRules/{FORWARDING_RULE_ID}`.
  final pulumi.Input<String?>? forwardingRule;

  /// Creates a new [ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSourcePscEndpoint].
  /// [forwardingRule] The full resource name of the global forwarding rule that identifies a Private Service Connect endpoint.
  const ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSourcePscEndpoint({
    this.forwardingRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRule': ?forwardingRule,
    };
  }

  factory ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSourcePscEndpoint.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSourcePscEndpoint(
      forwardingRule: (() { final guardedValue = map['forwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
