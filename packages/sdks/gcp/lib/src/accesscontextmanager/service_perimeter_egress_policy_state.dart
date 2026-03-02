// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_egress_policy_egress_from.dart';
import 'service_perimeter_egress_policy_egress_to.dart';

/// Input properties used for looking up and filtering ServicePerimeterEgressPolicy resources.
class ServicePerimeterEgressPolicyState {
  /// The name of the Access Policy this resource belongs to.
  final pulumi.Input<String>? accessPolicyId;
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterEgressPolicyEgressFrom>? egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  final pulumi.Input<ServicePerimeterEgressPolicyEgressTo>? egressTo;
  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  final pulumi.Input<String>? etag;
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String>? perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  final pulumi.Input<String>? title;

  /// Creates a new [ServicePerimeterEgressPolicyState].
  /// [accessPolicyId] The name of the Access Policy this resource belongs to.
  /// [egressFrom] Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// [egressTo] Defines the conditions on the `ApiOperation` and destination resources that
  /// [etag] The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  /// [perimeter] The name of the Service Perimeter to add this resource to.
  /// [title] Human readable title. Must be unique within the perimeter. Does not affect behavior.
  ServicePerimeterEgressPolicyState({
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
      'egressFrom': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterEgressPolicyEgressFrom, Map<String, dynamic>>(egressFrom, (value) => value.toMap()),
      'egressTo': ?pulumi.Input.mapOptionalInputValue<ServicePerimeterEgressPolicyEgressTo, Map<String, dynamic>>(egressTo, (value) => value.toMap()),
      'etag': ?etag,
      'perimeter': ?perimeter,
      'title': ?title,
    };
  }

  factory ServicePerimeterEgressPolicyState.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterEgressPolicyState(
      accessPolicyId: map['accessPolicyId'] == null ? null : (map['accessPolicyId']! as String).input(),
      egressFrom: map['egressFrom'] == null ? null : (ServicePerimeterEgressPolicyEgressFrom.fromMap((map['egressFrom']! as Map).cast<String, dynamic>())).input(),
      egressTo: map['egressTo'] == null ? null : (ServicePerimeterEgressPolicyEgressTo.fromMap((map['egressTo']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      perimeter: map['perimeter'] == null ? null : (map['perimeter']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

