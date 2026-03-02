// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_compute_beta.dart';
import 'instance_group_manager_all_instances_config_compute_beta.dart';
import 'instance_group_manager_auto_healing_policy_compute_beta.dart';
import 'instance_group_manager_instance_flexibility_policy_compute_beta.dart';
import 'instance_group_manager_instance_lifecycle_policy_compute_beta.dart';
import 'instance_group_manager_standby_policy_compute_beta.dart';
import 'instance_group_manager_update_policy_compute_beta.dart';
import 'instance_group_manager_version_compute_beta.dart';
import 'named_port_compute_beta.dart';
import 'region_instance_group_manager_failover_action_compute_beta.dart';
import 'region_instance_group_manager_list_managed_instances_results_compute_beta.dart';
import 'stateful_policy_compute_beta.dart';

/// {@template pulumi_compute_beta_region_instance_group_manager_compute_beta_args_doc}
/// The set of arguments for RegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_region_instance_group_manager_compute_beta_args_doc}
class RegionInstanceGroupManagerComputeBetaArgs {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final pulumi.Input<InstanceGroupManagerAllInstancesConfigComputeBeta>? allInstancesConfig;
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final pulumi.Input<List<InstanceGroupManagerAutoHealingPolicyComputeBeta>>? autoHealingPolicies;
  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final pulumi.Input<String>? baseInstanceName;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final pulumi.Input<DistributionPolicyComputeBeta>? distributionPolicy;
  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final pulumi.Input<RegionInstanceGroupManagerFailoverActionComputeBeta>? failoverAction;
  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final pulumi.Input<InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta>? instanceFlexibilityPolicy;
  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyComputeBeta>? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi.Input<RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta>? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPortComputeBeta>>? namedPorts;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final pulumi.Input<String>? serviceAccount;
  /// Standby policy for stopped and suspended instances.
  final pulumi.Input<InstanceGroupManagerStandbyPolicyComputeBeta>? standbyPolicy;
  /// Stateful configuration for this Instanced Group Manager
  final pulumi.Input<StatefulPolicyComputeBeta>? statefulPolicy;
  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final pulumi.Input<List<String>>? targetPools;
  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final pulumi.Input<int>? targetSize;
  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final pulumi.Input<int>? targetStoppedSize;
  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final pulumi.Input<int>? targetSuspendedSize;
  /// The update policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyComputeBeta>? updatePolicy;
  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final pulumi.Input<List<InstanceGroupManagerVersionComputeBeta>>? versions;

  /// Creates a new [RegionInstanceGroupManagerComputeBetaArgs].
  /// [allInstancesConfig] Specifies configuration that overrides the instance template configuration for the group.
  /// [autoHealingPolicies] The autohealing policy for this managed instance group. You can specify only one value.
  /// [baseInstanceName] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  /// [description] An optional description of this resource.
  /// [distributionPolicy] Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  /// [failoverAction] The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  /// [instanceFlexibilityPolicy] Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  /// [instanceLifecyclePolicy] The repair policy for this managed instance group.
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  /// [listManagedInstancesResults] Pagination behavior of the listManagedInstances API method for this managed instance group.
  /// [name] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serviceAccount] The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  /// [standbyPolicy] Standby policy for stopped and suspended instances.
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  RegionInstanceGroupManagerComputeBetaArgs({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.description,
    this.distributionPolicy,
    this.failoverAction,
    this.instanceFlexibilityPolicy,
    this.instanceLifecyclePolicy,
    this.instanceTemplate,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.project,
    required this.region,
    this.requestId,
    this.serviceAccount,
    this.standbyPolicy,
    this.statefulPolicy,
    this.targetPools,
    this.targetSize,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerAllInstancesConfigComputeBeta, Map<String, dynamic>>(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerAutoHealingPolicyComputeBeta>, List<Map<String, dynamic>>>(autoHealingPolicies, (value) => pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicyComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baseInstanceName': ?baseInstanceName,
      'description': ?description,
      'distributionPolicy': ?pulumi.Input.mapOptionalInputValue<DistributionPolicyComputeBeta, Map<String, dynamic>>(distributionPolicy, (value) => value.toMap()),
      'failoverAction': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerFailoverActionComputeBeta, String>(failoverAction, (value) => value.value),
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyComputeBeta, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceTemplate': ?instanceTemplate,
      'listManagedInstancesResults': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta, String>(listManagedInstancesResults, (value) => value.value),
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<NamedPortComputeBeta>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<NamedPortComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'serviceAccount': ?serviceAccount,
      'standbyPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerStandbyPolicyComputeBeta, Map<String, dynamic>>(standbyPolicy, (value) => value.toMap()),
      'statefulPolicy': ?pulumi.Input.mapOptionalInputValue<StatefulPolicyComputeBeta, Map<String, dynamic>>(statefulPolicy, (value) => value.toMap()),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyComputeBeta, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
      'versions': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerVersionComputeBeta>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<InstanceGroupManagerVersionComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionInstanceGroupManagerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerComputeBetaArgs(
      allInstancesConfig: map['allInstancesConfig'] == null ? null : (InstanceGroupManagerAllInstancesConfigComputeBeta.fromMap((map['allInstancesConfig']! as Map).cast<String, dynamic>())).input(),
      autoHealingPolicies: map['autoHealingPolicies'] == null ? null : (pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicyComputeBeta>(map['autoHealingPolicies']!, (value) => InstanceGroupManagerAutoHealingPolicyComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      baseInstanceName: map['baseInstanceName'] == null ? null : (map['baseInstanceName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      distributionPolicy: map['distributionPolicy'] == null ? null : (DistributionPolicyComputeBeta.fromMap((map['distributionPolicy']! as Map).cast<String, dynamic>())).input(),
      failoverAction: map['failoverAction'] == null ? null : (RegionInstanceGroupManagerFailoverActionComputeBeta.fromValue(map['failoverAction']! as String)).input(),
      instanceFlexibilityPolicy: map['instanceFlexibilityPolicy'] == null ? null : (InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta.fromMap((map['instanceFlexibilityPolicy']! as Map).cast<String, dynamic>())).input(),
      instanceLifecyclePolicy: map['instanceLifecyclePolicy'] == null ? null : (InstanceGroupManagerInstanceLifecyclePolicyComputeBeta.fromMap((map['instanceLifecyclePolicy']! as Map).cast<String, dynamic>())).input(),
      instanceTemplate: map['instanceTemplate'] == null ? null : (map['instanceTemplate']! as String).input(),
      listManagedInstancesResults: map['listManagedInstancesResults'] == null ? null : (RegionInstanceGroupManagerListManagedInstancesResultsComputeBeta.fromValue(map['listManagedInstancesResults']! as String)).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namedPorts: map['namedPorts'] == null ? null : (pulumi.Input.decodeList<NamedPortComputeBeta>(map['namedPorts']!, (value) => NamedPortComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      standbyPolicy: map['standbyPolicy'] == null ? null : (InstanceGroupManagerStandbyPolicyComputeBeta.fromMap((map['standbyPolicy']! as Map).cast<String, dynamic>())).input(),
      statefulPolicy: map['statefulPolicy'] == null ? null : (StatefulPolicyComputeBeta.fromMap((map['statefulPolicy']! as Map).cast<String, dynamic>())).input(),
      targetPools: map['targetPools'] == null ? null : ((map['targetPools']! as List).cast<String>()).input(),
      targetSize: map['targetSize'] == null ? null : (map['targetSize']! as int).input(),
      targetStoppedSize: map['targetStoppedSize'] == null ? null : (map['targetStoppedSize']! as int).input(),
      targetSuspendedSize: map['targetSuspendedSize'] == null ? null : (map['targetSuspendedSize']! as int).input(),
      updatePolicy: map['updatePolicy'] == null ? null : (InstanceGroupManagerUpdatePolicyComputeBeta.fromMap((map['updatePolicy']! as Map).cast<String, dynamic>())).input(),
      versions: map['versions'] == null ? null : (pulumi.Input.decodeList<InstanceGroupManagerVersionComputeBeta>(map['versions']!, (value) => InstanceGroupManagerVersionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

