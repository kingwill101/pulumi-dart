// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity_response.dart';

/// SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.
class SoleTenantConfigResponse {
  /// NodeAffinities used to match to a shared sole tenant node group.
  final pulumi.Input<List<NodeAffinityResponse>> nodeAffinities;

  /// Creates a new [SoleTenantConfigResponse].
  /// [nodeAffinities] NodeAffinities used to match to a shared sole tenant node group.
  SoleTenantConfigResponse({
    required this.nodeAffinities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinities': pulumi.Input.mapInputValue<List<NodeAffinityResponse>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<NodeAffinityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenantConfigResponse.fromMap(Map<String, dynamic> map) {
    return SoleTenantConfigResponse(
      nodeAffinities: pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAffinityResponse>(map['nodeAffinities']!, (value) => NodeAffinityResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

