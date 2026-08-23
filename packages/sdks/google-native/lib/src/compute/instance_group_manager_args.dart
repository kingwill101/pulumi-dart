// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy.dart';
import 'instance_group_manager_all_instances_config.dart';
import 'instance_group_manager_auto_healing_policy.dart';
import 'instance_group_manager_failover_action.dart';
import 'instance_group_manager_instance_flexibility_policy.dart';
import 'instance_group_manager_instance_lifecycle_policy.dart';
import 'instance_group_manager_list_managed_instances_results.dart';
import 'instance_group_manager_standby_policy.dart';
import 'instance_group_manager_target_size_unit.dart';
import 'instance_group_manager_update_policy.dart';
import 'instance_group_manager_version.dart';
import 'named_port.dart';
import 'stateful_policy.dart';

/// {@template pulumi_compute_alpha_instance_group_manager_args_doc}
/// The set of arguments for InstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_instance_group_manager_args_doc}
class InstanceGroupManagerArgs {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final pulumi.Input<InstanceGroupManagerAllInstancesConfig>? allInstancesConfig;
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final pulumi.Input<List<InstanceGroupManagerAutoHealingPolicy>>? autoHealingPolicies;
  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final pulumi.Input<String>? baseInstanceName;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final pulumi.Input<DistributionPolicy>? distributionPolicy;
  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final pulumi.Input<InstanceGroupManagerFailoverAction>? failoverAction;
  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final pulumi.Input<InstanceGroupManagerInstanceFlexibilityPolicy>? instanceFlexibilityPolicy;
  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicy>? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi.Input<InstanceGroupManagerListManagedInstancesResults>? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPort>>? namedPorts;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final pulumi.Input<String>? serviceAccount;
  /// Standby policy for stopped and suspended instances.
  final pulumi.Input<InstanceGroupManagerStandbyPolicy>? standbyPolicy;
  /// Stateful configuration for this Instanced Group Manager
  final pulumi.Input<StatefulPolicy>? statefulPolicy;
  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final pulumi.Input<List<String>>? targetPools;
  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final pulumi.Input<int>? targetSize;
  /// The unit of measure for the target size.
  final pulumi.Input<InstanceGroupManagerTargetSizeUnit>? targetSizeUnit;
  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final pulumi.Input<int>? targetStoppedSize;
  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final pulumi.Input<int>? targetSuspendedSize;
  /// The update policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerUpdatePolicy>? updatePolicy;
  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final pulumi.Input<List<InstanceGroupManagerVersion>>? versions;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerArgs].
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
  /// [targetSizeUnit] The unit of measure for the target size.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  /// [zone] Optional.
  const InstanceGroupManagerArgs({
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
    this.targetSizeUnit,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerAutoHealingPolicy>, List<Map<String, dynamic>>>(autoHealingPolicies, (value) => pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baseInstanceName': ?baseInstanceName,
      'description': ?description,
      'distributionPolicy': ?pulumi.Input.mapOptionalInputValue<DistributionPolicy, Map<String, dynamic>>(distributionPolicy, (value) => value.toMap()),
      'failoverAction': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerFailoverAction, String>(failoverAction, (value) => value.wireValue),
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceFlexibilityPolicy, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicy, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceTemplate': ?instanceTemplate,
      'listManagedInstancesResults': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerListManagedInstancesResults, String>(listManagedInstancesResults, (value) => value.wireValue),
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<NamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<NamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'requestId': ?requestId,
      'serviceAccount': ?serviceAccount,
      'standbyPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerStandbyPolicy, Map<String, dynamic>>(standbyPolicy, (value) => value.toMap()),
      'statefulPolicy': ?pulumi.Input.mapOptionalInputValue<StatefulPolicy, Map<String, dynamic>>(statefulPolicy, (value) => value.toMap()),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetSizeUnit': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerTargetSizeUnit, String>(targetSizeUnit, (value) => value.wireValue),
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicy, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
      'versions': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<InstanceGroupManagerVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerArgs(
      allInstancesConfig: (() { final guardedValue = map['allInstancesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerAllInstancesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicy>(guardedValue, (value) => InstanceGroupManagerAutoHealingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionPolicy: (() { final guardedValue = map['distributionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failoverAction: (() { final guardedValue = map['failoverAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerFailoverAction.fromValue(guardedValue as String)); })(),
      instanceFlexibilityPolicy: (() { final guardedValue = map['instanceFlexibilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceFlexibilityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceLifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceTemplate: (() { final guardedValue = map['instanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerListManagedInstancesResults.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamedPort>(guardedValue, (value) => NamedPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyPolicy: (() { final guardedValue = map['standbyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerStandbyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulPolicy: (() { final guardedValue = map['statefulPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSizeUnit: (() { final guardedValue = map['targetSizeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerTargetSizeUnit.fromValue(guardedValue as String)); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerVersion>(guardedValue, (value) => InstanceGroupManagerVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
