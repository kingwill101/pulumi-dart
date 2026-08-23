// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_scheduling_on_host_maintenance.dart';
import 'compute_scheduling_restart_type.dart';
import 'scheduling_node_affinity.dart';

/// Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes.
class ComputeScheduling {
  /// The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  final pulumi.Input<int>? minNodeCpus;
  /// A set of node affinity and anti-affinity configurations for sole tenant nodes.
  final pulumi.Input<List<SchedulingNodeAffinity>>? nodeAffinities;
  /// How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  final pulumi.Input<ComputeSchedulingOnHostMaintenance>? onHostMaintenance;
  /// Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  final pulumi.Input<ComputeSchedulingRestartType>? restartType;

  /// Creates a new [ComputeScheduling].
  /// [minNodeCpus] The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node. Ignored if no node_affinites are configured.
  /// [nodeAffinities] A set of node affinity and anti-affinity configurations for sole tenant nodes.
  /// [onHostMaintenance] How the instance should behave when the host machine undergoes maintenance that may temporarily impact instance performance.
  /// [restartType] Whether the Instance should be automatically restarted whenever it is terminated by Compute Engine (not terminated by user). This configuration is identical to `automaticRestart` field in Compute Engine create instance under scheduling. It was changed to an enum (instead of a boolean) to match the default value in Compute Engine which is automatic restart.
  const ComputeScheduling({
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.restartType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minNodeCpus': ?minNodeCpus,
      'nodeAffinities': ?pulumi.Input.mapOptionalInputValue<List<SchedulingNodeAffinity>, List<Map<String, dynamic>>>(nodeAffinities, (value) => pulumi.Input.encodeList<SchedulingNodeAffinity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onHostMaintenance': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulingOnHostMaintenance, String>(onHostMaintenance, (value) => value.wireValue),
      'restartType': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulingRestartType, String>(restartType, (value) => value.wireValue),
    };
  }

  factory ComputeScheduling.fromMap(Map<String, dynamic> map) {
    return ComputeScheduling(
      minNodeCpus: (() { final guardedValue = map['minNodeCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeAffinities: (() { final guardedValue = map['nodeAffinities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SchedulingNodeAffinity>(guardedValue, (value) => SchedulingNodeAffinity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onHostMaintenance: (() { final guardedValue = map['onHostMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeSchedulingOnHostMaintenance.fromValue(guardedValue as String)); })(),
      restartType: (() { final guardedValue = map['restartType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeSchedulingRestartType.fromValue(guardedValue as String)); })(),
    );
  }
}
