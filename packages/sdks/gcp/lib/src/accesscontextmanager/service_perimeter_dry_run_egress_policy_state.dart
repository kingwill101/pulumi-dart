// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_egress_policy_egress_from.dart';
import 'service_perimeter_dry_run_egress_policy_egress_to.dart';

/// Input properties used for looking up and filtering ServicePerimeterDryRunEgressPolicy resources.
class ServicePerimeterDryRunEgressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;

  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunEgressPolicyEgressFrom>? egressFrom;

  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterDryRunEgressPolicyEgressTo>? egressTo;

  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  final pulumi.Input<String>? etag;

  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterDryRunEgressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [etag] The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterDryRunEgressPolicyState({
    this.accessPolicyId,
    this.egressFrom,
    this.egressTo,
    this.etag,
    this.perimeter,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyId': ?accessPolicyId,
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
      'etag': ?etag,
      'perimeter': ?perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterDryRunEgressPolicyState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimeterDryRunEgressPolicyState(
      accessPolicyId: (() {
        final guardedValue = map['accessPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      perimeter: (() {
        final guardedValue = map['perimeter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
