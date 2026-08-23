// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_status_egress_policy_egress_from.dart';
import 'service_perimeter_status_egress_policy_egress_to.dart';

class ServicePerimeterStatusEgressPolicy {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatusEgressPolicyEgressFrom>? egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterStatusEgressPolicyEgressTo>? egressTo;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterStatusEgressPolicy].
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  const ServicePerimeterStatusEgressPolicy({
    this.egressFrom,
    this.egressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatusEgressPolicyEgressFrom, Map<String, dynamic>>(egressFrom, (value) => value.toMap()),
      'egressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterStatusEgressPolicyEgressTo, Map<String, dynamic>>(egressTo, (value) => value.toMap()),
      'title': ?title,
    };
  }

  factory ServicePerimeterStatusEgressPolicy.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterStatusEgressPolicy(
      egressFrom: (() { final guardedValue = map['egressFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterStatusEgressPolicyEgressFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egressTo: (() { final guardedValue = map['egressTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePerimeterStatusEgressPolicyEgressTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
