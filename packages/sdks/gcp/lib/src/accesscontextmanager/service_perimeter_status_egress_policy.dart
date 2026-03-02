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
  ServicePerimeterStatusEgressPolicy({
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
      egressFrom: map['egressFrom'] == null ? null : (ServicePerimeterStatusEgressPolicyEgressFrom.fromMap((map['egressFrom'] as Map).cast<String, dynamic>())).input(),
      egressTo: map['egressTo'] == null ? null : (ServicePerimeterStatusEgressPolicyEgressTo.fromMap((map['egressTo'] as Map).cast<String, dynamic>())).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

