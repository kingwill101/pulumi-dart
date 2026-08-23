// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_list.dart';
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_result.dart';
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_provisioning_model_mix.dart';

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy {
  /// List of instance selection options that the group will use when creating new VMs.
  final pulumi.Input<List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>>? instanceSelectionLists;
  /// A list of instance selection results in the group.
  final pulumi.Input<List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>>? instanceSelectionResults;
  /// Defines how the Group selects the provisioning model to ensure required reliability.
  final pulumi.Input<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix>? provisioningModelMix;

  /// Creates a new [ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy].
  /// [instanceSelectionLists] List of instance selection options that the group will use when creating new VMs.
  /// [instanceSelectionResults] A list of instance selection results in the group.
  /// [provisioningModelMix] Defines how the Group selects the provisioning model to ensure required reliability.
  const ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelectionResults,
    this.provisioningModelMix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>, List<Map<String, dynamic>>>(instanceSelectionLists, (value) => pulumi.Input.encodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectionResults': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>, List<Map<String, dynamic>>>(instanceSelectionResults, (value) => pulumi.Input.encodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningModelMix': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix, Map<String, dynamic>>(provisioningModelMix, (value) => value.toMap()),
    };
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicy(
      instanceSelectionLists: (() { final guardedValue = map['instanceSelectionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList>(guardedValue, (value) => ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceSelectionResults: (() { final guardedValue = map['instanceSelectionResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult>(guardedValue, (value) => ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningModelMix: (() { final guardedValue = map['provisioningModelMix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyProvisioningModelMix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
