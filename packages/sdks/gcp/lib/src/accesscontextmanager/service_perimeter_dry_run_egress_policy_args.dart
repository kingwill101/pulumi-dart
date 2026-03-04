// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_egress_policy_egress_from.dart';
import 'service_perimeter_dry_run_egress_policy_egress_to.dart';

/// {@template pulumi_accesscontextmanager_service_perimeter_dry_run_egress_policy_service_perimeter_dry_run_egress_policy_args_doc}
/// The set of arguments for ServicePerimeterDryRunEgressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_egress_policy_service_perimeter_dry_run_egress_policy_args_doc}
class ServicePerimeterDryRunEgressPolicyArgs {
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunEgressPolicyEgressFrom>? egressFrom;

  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunEgressPolicyEgressTo>? egressTo;

  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterDryRunEgressPolicyArgs].
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterDryRunEgressPolicyArgs({
    this.egressFrom,
    this.egressTo,
    required this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom':
          ?pulumi.Input.mapOptionalInputValue<
            ServicePerimeterDryRunEgressPolicyEgressFrom,
            Map<String, dynamic>
          >(egressFrom, (value) => value.toMap()),
      'egressTo':
          ?pulumi.Input.mapOptionalInputValue<
            ServicePerimeterDryRunEgressPolicyEgressTo,
            Map<String, dynamic>
          >(egressTo, (value) => value.toMap()),
      'perimeter': perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterDryRunEgressPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimeterDryRunEgressPolicyArgs(
      egressFrom: (() {
        final guardedValue = map['egressFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServicePerimeterDryRunEgressPolicyEgressFrom.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      egressTo: (() {
        final guardedValue = map['egressTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServicePerimeterDryRunEgressPolicyEgressTo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      perimeter: pulumi.Input.fromValue(map['perimeter'] as String),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
