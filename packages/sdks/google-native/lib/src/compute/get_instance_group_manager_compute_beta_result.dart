// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_response_compute_beta.dart';
import 'instance_group_manager_actions_summary_response_compute_beta.dart';
import 'instance_group_manager_all_instances_config_response_compute_beta.dart';
import 'instance_group_manager_auto_healing_policy_response_compute_beta.dart';
import 'instance_group_manager_instance_flexibility_policy_response_compute_beta.dart';
import 'instance_group_manager_instance_lifecycle_policy_response_compute_beta.dart';
import 'instance_group_manager_standby_policy_response_compute_beta.dart';
import 'instance_group_manager_status_response_compute_beta.dart';
import 'instance_group_manager_update_policy_response_compute_beta.dart';
import 'instance_group_manager_version_response_compute_beta.dart';
import 'named_port_response_compute_beta.dart';
import 'stateful_policy_response_compute_beta.dart';

/// Result data returned by getInstanceGroupManager.
class GetInstanceGroupManagerComputeBetaResult {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final InstanceGroupManagerAllInstancesConfigResponseComputeBeta? allInstancesConfig;
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final List<InstanceGroupManagerAutoHealingPolicyResponseComputeBeta>? autoHealingPolicies;
  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final String? baseInstanceName;
  /// The creation timestamp for this managed instance group in RFC3339 text format.
  final String? creationTimestamp;
  /// The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  final InstanceGroupManagerActionsSummaryResponseComputeBeta? currentActions;
  /// An optional description of this resource.
  final String? description;
  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final DistributionPolicyResponseComputeBeta? distributionPolicy;
  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final String? failoverAction;
  /// Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  final String? fingerprint;
  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta? instanceFlexibilityPolicy;
  /// The URL of the Instance Group resource.
  final String? instanceGroup;
  /// The repair policy for this managed instance group.
  final InstanceGroupManagerInstanceLifecyclePolicyResponseComputeBeta? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final String? instanceTemplate;
  /// The resource type, which is always compute#instanceGroupManager for managed instance groups.
  final String? kind;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final String? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final String? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final List<NamedPortResponseComputeBeta>? namedPorts;
  /// The URL of the region where the managed instance group resides (for regional resources).
  final String? region;
  /// The URL for this managed instance group. The server defines this URL.
  final String? selfLink;
  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final String? serviceAccount;
  /// Standby policy for stopped and suspended instances.
  final InstanceGroupManagerStandbyPolicyResponseComputeBeta? standbyPolicy;
  /// Stateful configuration for this Instanced Group Manager
  final StatefulPolicyResponseComputeBeta? statefulPolicy;
  /// The status of this managed instance group.
  final InstanceGroupManagerStatusResponseComputeBeta? status;
  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final List<String>? targetPools;
  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final int? targetSize;
  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final int? targetStoppedSize;
  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final int? targetSuspendedSize;
  /// The update policy for this managed instance group.
  final InstanceGroupManagerUpdatePolicyResponseComputeBeta? updatePolicy;
  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final List<InstanceGroupManagerVersionResponseComputeBeta>? versions;
  /// The URL of a zone where the managed instance group is located (for zonal resources).
  final String? zone;

  /// Creates a new [GetInstanceGroupManagerComputeBetaResult].
  /// [allInstancesConfig] Specifies configuration that overrides the instance template configuration for the group.
  /// [autoHealingPolicies] The autohealing policy for this managed instance group. You can specify only one value.
  /// [baseInstanceName] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  /// [creationTimestamp] The creation timestamp for this managed instance group in RFC3339 text format.
  /// [currentActions] The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  /// [description] An optional description of this resource.
  /// [distributionPolicy] Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  /// [failoverAction] The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  /// [fingerprint] Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  /// [instanceFlexibilityPolicy] Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  /// [instanceGroup] The URL of the Instance Group resource.
  /// [instanceLifecyclePolicy] The repair policy for this managed instance group.
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  /// [kind] The resource type, which is always compute#instanceGroupManager for managed instance groups.
  /// [listManagedInstancesResults] Pagination behavior of the listManagedInstances API method for this managed instance group.
  /// [name] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  /// [region] The URL of the region where the managed instance group resides (for regional resources).
  /// [selfLink] The URL for this managed instance group. The server defines this URL.
  /// [serviceAccount] The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  /// [standbyPolicy] Standby policy for stopped and suspended instances.
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [status] The status of this managed instance group.
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  /// [zone] The URL of a zone where the managed instance group is located (for zonal resources).
  const GetInstanceGroupManagerComputeBetaResult({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.creationTimestamp,
    this.currentActions,
    this.description,
    this.distributionPolicy,
    this.failoverAction,
    this.fingerprint,
    this.instanceFlexibilityPolicy,
    this.instanceGroup,
    this.instanceLifecyclePolicy,
    this.instanceTemplate,
    this.kind,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.region,
    this.selfLink,
    this.serviceAccount,
    this.standbyPolicy,
    this.statefulPolicy,
    this.status,
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
      'allInstancesConfig': ?allInstancesConfig?.toMap(),
      'autoHealingPolicies': ?(() { final guardedValue = autoHealingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicyResponseComputeBeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'baseInstanceName': ?baseInstanceName,
      'creationTimestamp': ?creationTimestamp,
      'currentActions': ?currentActions?.toMap(),
      'description': ?description,
      'distributionPolicy': ?distributionPolicy?.toMap(),
      'failoverAction': ?failoverAction,
      'fingerprint': ?fingerprint,
      'instanceFlexibilityPolicy': ?instanceFlexibilityPolicy?.toMap(),
      'instanceGroup': ?instanceGroup,
      'instanceLifecyclePolicy': ?instanceLifecyclePolicy?.toMap(),
      'instanceTemplate': ?instanceTemplate,
      'kind': ?kind,
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts': ?(() { final guardedValue = namedPorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<NamedPortResponseComputeBeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'selfLink': ?selfLink,
      'serviceAccount': ?serviceAccount,
      'standbyPolicy': ?standbyPolicy?.toMap(),
      'statefulPolicy': ?statefulPolicy?.toMap(),
      'status': ?status?.toMap(),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy': ?updatePolicy?.toMap(),
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceGroupManagerVersionResponseComputeBeta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupManagerComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerComputeBetaResult(
      allInstancesConfig: (() { final guardedValue = map['allInstancesConfig']; if (guardedValue == null) return null; return InstanceGroupManagerAllInstancesConfigResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicyResponseComputeBeta>(guardedValue, (value) => InstanceGroupManagerAutoHealingPolicyResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentActions: (() { final guardedValue = map['currentActions']; if (guardedValue == null) return null; return InstanceGroupManagerActionsSummaryResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionPolicy: (() { final guardedValue = map['distributionPolicy']; if (guardedValue == null) return null; return DistributionPolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      failoverAction: (() { final guardedValue = map['failoverAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceFlexibilityPolicy: (() { final guardedValue = map['instanceFlexibilityPolicy']; if (guardedValue == null) return null; return InstanceGroupManagerInstanceFlexibilityPolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceGroup: (() { final guardedValue = map['instanceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return InstanceGroupManagerInstanceLifecyclePolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceTemplate: (() { final guardedValue = map['instanceTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamedPortResponseComputeBeta>(guardedValue, (value) => NamedPortResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyPolicy: (() { final guardedValue = map['standbyPolicy']; if (guardedValue == null) return null; return InstanceGroupManagerStandbyPolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      statefulPolicy: (() { final guardedValue = map['statefulPolicy']; if (guardedValue == null) return null; return StatefulPolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return InstanceGroupManagerStatusResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return InstanceGroupManagerUpdatePolicyResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceGroupManagerVersionResponseComputeBeta>(guardedValue, (value) => InstanceGroupManagerVersionResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
