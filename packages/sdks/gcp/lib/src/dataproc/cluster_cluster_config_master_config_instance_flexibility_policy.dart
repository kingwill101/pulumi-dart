// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_master_config_instance_flexibility_policy_instance_selection_list.dart';
import 'cluster_cluster_config_master_config_instance_flexibility_policy_instance_selection_result.dart';

class ClusterClusterConfigMasterConfigInstanceFlexibilityPolicy {
  /// List of instance selection options that the group will use when creating new VMs.
  final pulumi.Input<List<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList>>? instanceSelectionLists;
  /// A list of instance selection results in the group.
  final pulumi.Input<List<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionResult>>? instanceSelectionResults;

  /// Creates a new [ClusterClusterConfigMasterConfigInstanceFlexibilityPolicy].
  /// [instanceSelectionLists] List of instance selection options that the group will use when creating new VMs.
  /// [instanceSelectionResults] A list of instance selection results in the group.
  const ClusterClusterConfigMasterConfigInstanceFlexibilityPolicy({
    this.instanceSelectionLists,
    this.instanceSelectionResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSelectionLists': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList>, List<Map<String, dynamic>>>(instanceSelectionLists, (value) => pulumi.Input.encodeList<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceSelectionResults': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionResult>, List<Map<String, dynamic>>>(instanceSelectionResults, (value) => pulumi.Input.encodeList<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterClusterConfigMasterConfigInstanceFlexibilityPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigMasterConfigInstanceFlexibilityPolicy(
      instanceSelectionLists: (() { final guardedValue = map['instanceSelectionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList>(guardedValue, (value) => ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceSelectionResults: (() { final guardedValue = map['instanceSelectionResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionResult>(guardedValue, (value) => ClusterClusterConfigMasterConfigInstanceFlexibilityPolicyInstanceSelectionResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
