// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_from.dart';
import 'egress_to.dart';

/// Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.
class EgressPolicy {
  /// Defines conditions on the source of a request causing this EgressPolicy to apply.
  final pulumi.Input<EgressFrom>? egressFrom;
  /// Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
  final pulumi.Input<EgressTo>? egressTo;

  /// Creates a new [EgressPolicy].
  /// [egressFrom] Defines conditions on the source of a request causing this EgressPolicy to apply.
  /// [egressTo] Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
  const EgressPolicy({
    this.egressFrom,
    this.egressTo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom': ?pulumi.Input.mapOptionalInputValue<EgressFrom, Map<String, dynamic>>(egressFrom, (value) => value.toMap()),
      'egressTo': ?pulumi.Input.mapOptionalInputValue<EgressTo, Map<String, dynamic>>(egressTo, (value) => value.toMap()),
    };
  }

  factory EgressPolicy.fromMap(Map<String, dynamic> map) {
    return EgressPolicy(
      egressFrom: (() { final guardedValue = map['egressFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EgressFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egressTo: (() { final guardedValue = map['egressTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EgressTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

