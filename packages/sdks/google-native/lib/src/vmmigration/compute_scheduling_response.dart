// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_node_affinity_response.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeSchedulingResponse {
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final pulumi.Input<int> minNodeCpus;
  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final pulumi.Input<List<SchedulingNodeAffinityResponse>> nodeAffinities;
  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final pulumi.Input<String> onHostMaintenance;
  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final pulumi.Input<String> restartType;

  /// Creates a new [ComputeSchedulingResponse].
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations for sole tenant nodes.
  /// [onHostMaintenance] How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  /// [restartType] Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  ComputeSchedulingResponse({
    required this.minNodeCpus,
    required this.nodeAffinities,
    required this.onHostMaintenance,
    required this.restartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minNodeCpus': minNodeCpus,
      'nodeAffinities': pulumi.Input.mapInputValue<List<SchedulingNodeAffinityResponse>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': onHostMaintenance,
      'restartType': restartType,
    };
  }

  factory ComputeSchedulingResponse.fromMap(Map<String, dynamic> map) {
    return ComputeSchedulingResponse(
      minNodeCpus: pulumi.Input.fromValue(map['minNodeCpus'] as int),
      nodeAffinities: pulumi.Input.fromValue(pulumi.Input.decodeList<SchedulingNodeAffinityResponse>(map['nodeAffinities']!, (value) => SchedulingNodeAffinityResponse.fromMap((value as Map).cast<String, dynamic>()))),
      onHostMaintenance: pulumi.Input.fromValue(map['onHostMaintenance'] as String),
      restartType: pulumi.Input.fromValue(map['restartType'] as String),
    );
  }
}

