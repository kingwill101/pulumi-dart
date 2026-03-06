// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// The list of RouteTables to advertise the routes to.
class PropagatedRouteTableResponse {
  /// The list of resource ids of all the RouteTables.
  final pulumi.Input<List<SubResourceResponse>>? ids;
  /// The list of labels.
  final pulumi.Input<List<String>>? labels;

  /// Creates a new [PropagatedRouteTableResponse].
  /// [ids] The list of resource ids of all the RouteTables.
  /// [labels] The list of labels.
  const PropagatedRouteTableResponse({
    this.ids,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(ids, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
    };
  }

  factory PropagatedRouteTableResponse.fromMap(Map<String, dynamic> map) {
    return PropagatedRouteTableResponse(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

