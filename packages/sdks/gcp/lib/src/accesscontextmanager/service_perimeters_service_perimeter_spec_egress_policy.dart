// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy_egress_from.dart';
import 'service_perimeters_service_perimeter_spec_egress_policy_egress_to.dart';

class ServicePerimetersServicePerimeterSpecEgressPolicy {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom>? egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo>? egressTo;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimetersServicePerimeterSpecEgressPolicy].
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimetersServicePerimeterSpecEgressPolicy({
    this.egressFrom,
    this.egressTo,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom, Map<String, dynamic>>(egressFrom, (value) => value.toMap()),
      'egressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo, Map<String, dynamic>>(egressTo, (value) => value.toMap()),
      'title': ?title,
    };
  }

  factory ServicePerimetersServicePerimeterSpecEgressPolicy.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterSpecEgressPolicy(
      egressFrom: map['egressFrom'] == null ? null : (ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom.fromMap((map['egressFrom']! as Map).cast<String, dynamic>())).input(),
      egressTo: map['egressTo'] == null ? null : (ServicePerimetersServicePerimeterSpecEgressPolicyEgressTo.fromMap((map['egressTo']! as Map).cast<String, dynamic>())).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

