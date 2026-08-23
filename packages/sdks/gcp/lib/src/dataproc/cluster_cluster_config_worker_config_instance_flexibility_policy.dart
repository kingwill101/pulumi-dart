// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_worker_config_instance_flexibility_policy_instance_selection_list.dart';
import 'cluster_cluster_config_worker_config_instance_flexibility_policy_instance_selection_result.dart';

class ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy {
  /// List of instance selection options that the group will use when creating new VMs.
  final pulumi.Input<List<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>>? instanceSelectionLists;
  /// A list of instance selection results in the group.
  final pulumi.Input<List<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>>? instanceSelectionResults;

  /// Creates a new [ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy].
  /// [instanceSelectionLists] List of instance selection options that the group will use when creating new VMs.
  /// [instanceSelectionResults] A list of instance selection results in the group.
  const ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelectionResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>, List<Map<String, dynamic>>>(instanceSelectionLists, (value) => pulumi.Input.encodeList<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectionResults': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>, List<Map<String, dynamic>>>(instanceSelectionResults, (value) => pulumi.Input.encodeList<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicy(
      instanceSelectionLists: (() { final guardedValue = map['instanceSelectionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>(guardedValue, (value) => ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceSelectionResults: (() { final guardedValue = map['instanceSelectionResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>(guardedValue, (value) => ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
