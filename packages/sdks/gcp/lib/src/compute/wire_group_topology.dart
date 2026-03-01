// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_topology_endpoint.dart';

class WireGroupTopology {
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final List<WireGroupTopologyEndpoint>? endpoints;

  /// Creates a new [WireGroupTopology].
  /// [endpoints] Endpoints grouped by location, each mapping to interconnect configurations.
  WireGroupTopology({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<WireGroupTopologyEndpoint, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
    };
  }

  factory WireGroupTopology.fromMap(Map<String, dynamic> map) {
    return WireGroupTopology(
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<WireGroupTopologyEndpoint>(map['endpoints'], (value) => WireGroupTopologyEndpoint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

