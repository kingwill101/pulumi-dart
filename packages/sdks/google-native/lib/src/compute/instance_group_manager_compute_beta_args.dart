// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_compute_beta.dart';
import 'instance_group_manager_all_instances_config_compute_beta.dart';
import 'instance_group_manager_auto_healing_policy_compute_beta.dart';
import 'instance_group_manager_failover_action_compute_beta.dart';
import 'instance_group_manager_instance_flexibility_policy_compute_beta.dart';
import 'instance_group_manager_instance_lifecycle_policy_compute_beta.dart';
import 'instance_group_manager_list_managed_instances_results_compute_beta.dart';
import 'instance_group_manager_standby_policy_compute_beta.dart';
import 'instance_group_manager_update_policy_compute_beta.dart';
import 'instance_group_manager_version_compute_beta.dart';
import 'named_port_compute_beta.dart';
import 'stateful_policy_compute_beta.dart';

/// {@template pulumi_compute_beta_instance_group_manager_compute_beta_args_doc}
/// The set of arguments for InstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_instance_group_manager_compute_beta_args_doc}
class InstanceGroupManagerComputeBetaArgs {
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
  final pulumi.Input<InstanceGroupManagerFailoverActionComputeBeta>? failoverAction;
  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final pulumi.Input<InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta>? instanceFlexibilityPolicy;
  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyComputeBeta>? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi.Input<InstanceGroupManagerListManagedInstancesResultsComputeBeta>? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPortComputeBeta>>? namedPorts;
  final pulumi.Input<String>? project;
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
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerComputeBetaArgs].
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
  /// [zone] Optional.
  const InstanceGroupManagerComputeBetaArgs({
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
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerAllInstancesConfigComputeBeta, Map<String, dynamic>>(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerAutoHealingPolicyComputeBeta>, List<Map<String, dynamic>>>(autoHealingPolicies, (value) => pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicyComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baseInstanceName': ?baseInstanceName,
      'description': ?description,
      'distributionPolicy': ?pulumi.Input.mapOptionalInputValue<DistributionPolicyComputeBeta, Map<String, dynamic>>(distributionPolicy, (value) => value.toMap()),
      'failoverAction': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerFailoverActionComputeBeta, String>(failoverAction, (value) => value.wireValue),
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyComputeBeta, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceTemplate': ?instanceTemplate,
      'listManagedInstancesResults': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerListManagedInstancesResultsComputeBeta, String>(listManagedInstancesResults, (value) => value.wireValue),
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<NamedPortComputeBeta>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<NamedPortComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
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
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerComputeBetaArgs(
      allInstancesConfig: (() { final guardedValue = map['allInstancesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerAllInstancesConfigComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicyComputeBeta>(guardedValue, (value) => InstanceGroupManagerAutoHealingPolicyComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionPolicy: (() { final guardedValue = map['distributionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionPolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failoverAction: (() { final guardedValue = map['failoverAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerFailoverActionComputeBeta.fromValue(guardedValue as String)); })(),
      instanceFlexibilityPolicy: (() { final guardedValue = map['instanceFlexibilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceLifecyclePolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceTemplate: (() { final guardedValue = map['instanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerListManagedInstancesResultsComputeBeta.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedPortComputeBeta>(guardedValue, (value) => NamedPortComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyPolicy: (() { final guardedValue = map['standbyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerStandbyPolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulPolicy: (() { final guardedValue = map['statefulPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulPolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerUpdatePolicyComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerVersionComputeBeta>(guardedValue, (value) => InstanceGroupManagerVersionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
