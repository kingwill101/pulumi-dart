// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLbPoliciesAutoCapacityDrain {
  /// Optional. If set to 'True', an unhealthy MIG/NEG will be set as drained. - An MIG/NEG is considered unhealthy if less than 25% of the instances/endpoints in the MIG/NEG are healthy. - This option will never result in draining more than 50% of the configured IGs/NEGs for the Backend Service.
  final pulumi.Input<bool>? enable;

  /// Creates a new [ServiceLbPoliciesAutoCapacityDrain].
  /// [enable] Optional. If set to 'True', an unhealthy MIG/NEG will be set as drained. - An MIG/NEG is considered unhealthy if less than 25% of the instances/endpoints in the MIG/NEG are healthy. - This option will never result in draining more than 50% of the configured IGs/NEGs for the Backend Service.
  const ServiceLbPoliciesAutoCapacityDrain({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory ServiceLbPoliciesAutoCapacityDrain.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesAutoCapacityDrain(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
