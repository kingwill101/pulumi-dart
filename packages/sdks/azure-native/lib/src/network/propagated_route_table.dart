// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// The list of RouteTables to advertise the routes to.
class PropagatedRouteTable {
  /// The list of resource ids of all the RouteTables.
  final pulumi.Input<List<SubResource>>? ids;
  /// The list of labels.
  final pulumi.Input<List<String>>? labels;

  /// Creates a new [PropagatedRouteTable].
  /// [ids] The list of resource ids of all the RouteTables.
  /// [labels] The list of labels.
  PropagatedRouteTable({
    this.ids,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ids, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
    };
  }

  factory PropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return PropagatedRouteTable(
      ids: map['ids'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['ids']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as List).cast<String>()).input(),
    );
  }
}

