// ignore_for_file: unused_element, unnecessary_cast

import 'egress_from_response.dart';
import 'egress_to_response.dart';

/// Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.
class EgressPolicyResponse {
  /// Defines conditions on the source of a request causing this EgressPolicy to apply.
  final EgressFromResponse egressFrom;
  /// Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
  final EgressToResponse egressTo;

  /// Creates a new [EgressPolicyResponse].
  /// [egressFrom] Defines conditions on the source of a request causing this EgressPolicy to apply.
  /// [egressTo] Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.
  EgressPolicyResponse({
    required this.egressFrom,
    required this.egressTo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressFrom': egressFrom.toMap(),
      'egressTo': egressTo.toMap(),
    };
  }

  factory EgressPolicyResponse.fromMap(Map<String, dynamic> map) {
    return EgressPolicyResponse(
      egressFrom: EgressFromResponse.fromMap((map['egressFrom'] as Map).cast<String, dynamic>()),
      egressTo: EgressToResponse.fromMap((map['egressTo'] as Map).cast<String, dynamic>()),
    );
  }
}

