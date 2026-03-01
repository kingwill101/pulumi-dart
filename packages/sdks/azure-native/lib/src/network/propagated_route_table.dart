// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// The list of RouteTables to advertise the routes to.
class PropagatedRouteTable {
  /// The list of resource ids of all the RouteTables.
  final List<SubResource>? ids;
  /// The list of labels.
  final List<String>? labels;

  /// Creates a new [PropagatedRouteTable].
  /// [ids] The list of resource ids of all the RouteTables.
  /// [labels] The list of labels.
  PropagatedRouteTable({
    this.ids,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(ids!, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory PropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return PropagatedRouteTable(
      ids: map['ids'] == null ? null : pulumi.Input.decodeList<SubResource>(map['ids'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
    );
  }
}

