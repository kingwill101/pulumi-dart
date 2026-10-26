// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_response_compute_v1.dart';
import 'instance_group_manager_actions_summary_response_compute_v1.dart';
import 'instance_group_manager_auto_healing_policy_response_compute_v1.dart';
import 'instance_group_manager_instance_lifecycle_policy_response_compute_v1.dart';
import 'instance_group_manager_status_response_compute_v1.dart';
import 'instance_group_manager_update_policy_response_compute_v1.dart';
import 'instance_group_manager_version_response_compute_v1.dart';
import 'named_port_response_compute_v1.dart';
import 'stateful_policy_response_compute_v1.dart';

/// Result data returned by getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerComputeV1Result {
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final List<InstanceGroupManagerAutoHealingPolicyResponseComputeV1>? autoHealingPolicies;
  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final String? baseInstanceName;
  /// The creation timestamp for this managed instance group in RFC3339 text format.
  final String? creationTimestamp;
  /// The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  final InstanceGroupManagerActionsSummaryResponseComputeV1? currentActions;
  /// An optional description of this resource.
  final String? description;
  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final DistributionPolicyResponseComputeV1? distributionPolicy;
  /// Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  final String? fingerprint;
  /// The URL of the Instance Group resource.
  final String? instanceGroup;
  /// The repair policy for this managed instance group.
  final InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final String? instanceTemplate;
  /// The resource type, which is always compute#instanceGroupManager for managed instance groups.
  final String? kind;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final String? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final String? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final List<NamedPortResponseComputeV1>? namedPorts;
  /// The URL of the region where the managed instance group resides (for regional resources).
  final String? region;
  /// The URL for this managed instance group. The server defines this URL.
  final String? selfLink;
  /// Stateful configuration for this Instanced Group Manager
  final StatefulPolicyResponseComputeV1? statefulPolicy;
  /// The status of this managed instance group.
  final InstanceGroupManagerStatusResponseComputeV1? status;
  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final List<String>? targetPools;
  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final int? targetSize;
  /// The update policy for this managed instance group.
  final InstanceGroupManagerUpdatePolicyResponseComputeV1? updatePolicy;
  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final List<InstanceGroupManagerVersionResponseComputeV1>? versions;
  /// The URL of a zone where the managed instance group is located (for zonal resources).
  final String? zone;

  /// Creates a new [GetRegionInstanceGroupManagerComputeV1Result].
  /// [autoHealingPolicies] The autohealing policy for this managed instance group. You can specify only one value.
  /// [baseInstanceName] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  /// [creationTimestamp] The creation timestamp for this managed instance group in RFC3339 text format.
  /// [currentActions] The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  /// [description] An optional description of this resource.
  /// [distributionPolicy] Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  /// [fingerprint] Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  /// [instanceGroup] The URL of the Instance Group resource.
  /// [instanceLifecyclePolicy] The repair policy for this managed instance group.
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  /// [kind] The resource type, which is always compute#instanceGroupManager for managed instance groups.
  /// [listManagedInstancesResults] Pagination behavior of the listManagedInstances API method for this managed instance group.
  /// [name] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  /// [region] The URL of the region where the managed instance group resides (for regional resources).
  /// [selfLink] The URL for this managed instance group. The server defines this URL.
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [status] The status of this managed instance group.
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  /// [zone] The URL of a zone where the managed instance group is located (for zonal resources).
  const GetRegionInstanceGroupManagerComputeV1Result({
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.creationTimestamp,
    this.currentActions,
    this.description,
    this.distributionPolicy,
    this.fingerprint,
    this.instanceGroup,
    this.instanceLifecyclePolicy,
    this.instanceTemplate,
    this.kind,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.region,
    this.selfLink,
    this.statefulPolicy,
    this.status,
    this.targetPools,
    this.targetSize,
    this.updatePolicy,
    this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoHealingPolicies': ?(() { final guardedValue = autoHealingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicyResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'baseInstanceName': ?baseInstanceName,
      'creationTimestamp': ?creationTimestamp,
      'currentActions': ?currentActions?.toMap(),
      'description': ?description,
      'distributionPolicy': ?distributionPolicy?.toMap(),
      'fingerprint': ?fingerprint,
      'instanceGroup': ?instanceGroup,
      'instanceLifecyclePolicy': ?instanceLifecyclePolicy?.toMap(),
      'instanceTemplate': ?instanceTemplate,
      'kind': ?kind,
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts': ?(() { final guardedValue = namedPorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<NamedPortResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'selfLink': ?selfLink,
      'statefulPolicy': ?statefulPolicy?.toMap(),
      'status': ?status?.toMap(),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'updatePolicy': ?updatePolicy?.toMap(),
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstanceGroupManagerVersionResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zone': ?zone,
    };
  }

  factory GetRegionInstanceGroupManagerComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerComputeV1Result(
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicyResponseComputeV1>(guardedValue, (value) => InstanceGroupManagerAutoHealingPolicyResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentActions: (() { final guardedValue = map['currentActions']; if (guardedValue == null) return null; return InstanceGroupManagerActionsSummaryResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionPolicy: (() { final guardedValue = map['distributionPolicy']; if (guardedValue == null) return null; return DistributionPolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceGroup: (() { final guardedValue = map['instanceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceTemplate: (() { final guardedValue = map['instanceTemplate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NamedPortResponseComputeV1>(guardedValue, (value) => NamedPortResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statefulPolicy: (() { final guardedValue = map['statefulPolicy']; if (guardedValue == null) return null; return StatefulPolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return InstanceGroupManagerStatusResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return InstanceGroupManagerUpdatePolicyResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceGroupManagerVersionResponseComputeV1>(guardedValue, (value) => InstanceGroupManagerVersionResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
