// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_compute_v1.dart';
import 'instance_group_manager_auto_healing_policy_compute_v1.dart';
import 'instance_group_manager_instance_lifecycle_policy_compute_v1.dart';
import 'instance_group_manager_update_policy_compute_v1.dart';
import 'instance_group_manager_version_compute_v1.dart';
import 'named_port_compute_v1.dart';
import 'region_instance_group_manager_list_managed_instances_results_compute_v1.dart';
import 'stateful_policy_compute_v1.dart';

/// {@template pulumi_compute_v1_region_instance_group_manager_compute_v1_args_doc}
/// The set of arguments for RegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_instance_group_manager_compute_v1_args_doc}
class RegionInstanceGroupManagerComputeV1Args {
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final pulumi.Input<List<InstanceGroupManagerAutoHealingPolicyComputeV1>>? autoHealingPolicies;
  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final pulumi.Input<String>? baseInstanceName;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final pulumi.Input<DistributionPolicyComputeV1>? distributionPolicy;
  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyComputeV1>? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi.Input<RegionInstanceGroupManagerListManagedInstancesResultsComputeV1>? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPortComputeV1>>? namedPorts;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Stateful configuration for this Instanced Group Manager
  final pulumi.Input<StatefulPolicyComputeV1>? statefulPolicy;
  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final pulumi.Input<List<String>>? targetPools;
  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final pulumi.Input<int>? targetSize;
  /// The update policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyComputeV1>? updatePolicy;
  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final pulumi.Input<List<InstanceGroupManagerVersionComputeV1>>? versions;

  /// Creates a new [RegionInstanceGroupManagerComputeV1Args].
  /// [autoHealingPolicies] The autohealing policy for this managed instance group. You can specify only one value.
  /// [baseInstanceName] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  /// [description] An optional description of this resource.
  /// [distributionPolicy] Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  /// [instanceLifecyclePolicy] The repair policy for this managed instance group.
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  /// [listManagedInstancesResults] Pagination behavior of the listManagedInstances API method for this managed instance group.
  /// [name] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  const RegionInstanceGroupManagerComputeV1Args({
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.description,
    this.distributionPolicy,
    this.instanceLifecyclePolicy,
    this.instanceTemplate,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.project,
    required this.region,
    this.requestId,
    this.statefulPolicy,
    this.targetPools,
    this.targetSize,
    this.updatePolicy,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerAutoHealingPolicyComputeV1>, List<Map<String, dynamic>>>(autoHealingPolicies, (value) => pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicyComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baseInstanceName': ?baseInstanceName,
      'description': ?description,
      'distributionPolicy': ?pulumi.Input.mapOptionalInputValue<DistributionPolicyComputeV1, Map<String, dynamic>>(distributionPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyComputeV1, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceTemplate': ?instanceTemplate,
      'listManagedInstancesResults': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerListManagedInstancesResultsComputeV1, String>(listManagedInstancesResults, (value) => value.wireValue),
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<NamedPortComputeV1>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<NamedPortComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'statefulPolicy': ?pulumi.Input.mapOptionalInputValue<StatefulPolicyComputeV1, Map<String, dynamic>>(statefulPolicy, (value) => value.toMap()),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyComputeV1, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
      'versions': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerVersionComputeV1>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<InstanceGroupManagerVersionComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionInstanceGroupManagerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerComputeV1Args(
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicyComputeV1>(guardedValue, (value) => InstanceGroupManagerAutoHealingPolicyComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionPolicy: (() { final guardedValue = map['distributionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionPolicyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceLifecyclePolicyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceTemplate: (() { final guardedValue = map['instanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerListManagedInstancesResultsComputeV1.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedPortComputeV1>(guardedValue, (value) => NamedPortComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statefulPolicy: (() { final guardedValue = map['statefulPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulPolicyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerUpdatePolicyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerVersionComputeV1>(guardedValue, (value) => InstanceGroupManagerVersionComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
