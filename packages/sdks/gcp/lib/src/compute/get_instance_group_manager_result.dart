// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_all_instances_config.dart';
import 'get_instance_group_manager_auto_healing_policy.dart';
import 'get_instance_group_manager_instance_lifecycle_policy.dart';
import 'get_instance_group_manager_named_port.dart';
import 'get_instance_group_manager_param.dart';
import 'get_instance_group_manager_resource_policy.dart';
import 'get_instance_group_manager_standby_policy.dart';
import 'get_instance_group_manager_stateful_disk.dart';
import 'get_instance_group_manager_stateful_external_ip.dart';
import 'get_instance_group_manager_stateful_internal_ip.dart';
import 'get_instance_group_manager_status.dart';
import 'get_instance_group_manager_target_size_policy.dart';
import 'get_instance_group_manager_update_policy.dart';
import 'get_instance_group_manager_version.dart';

/// Result data returned by getInstanceGroupManager.
class GetInstanceGroupManagerResult {
  final List<GetInstanceGroupManagerAllInstancesConfig>? allInstancesConfigs;
  final List<GetInstanceGroupManagerAutoHealingPolicy>? autoHealingPolicies;
  final String? baseInstanceName;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceGroup;
  final int? instanceGroupManagerId;
  final List<GetInstanceGroupManagerInstanceLifecyclePolicy>? instanceLifecyclePolicies;
  final String? listManagedInstancesResults;
  final String? name;
  final List<GetInstanceGroupManagerNamedPort>? namedPorts;
  final String? operation;
  final List<GetInstanceGroupManagerParam>? params;
  final String? project;
  final List<GetInstanceGroupManagerResourcePolicy>? resourcePolicies;
  final String? selfLink;
  final List<GetInstanceGroupManagerStandbyPolicy>? standbyPolicies;
  final List<GetInstanceGroupManagerStatefulDisk>? statefulDisks;
  final List<GetInstanceGroupManagerStatefulExternalIp>? statefulExternalIps;
  final List<GetInstanceGroupManagerStatefulInternalIp>? statefulInternalIps;
  final List<GetInstanceGroupManagerStatus>? statuses;
  final List<String>? targetPools;
  final int? targetSize;
  final List<GetInstanceGroupManagerTargetSizePolicy>? targetSizePolicies;
  final int? targetStoppedSize;
  final int? targetSuspendedSize;
  final List<GetInstanceGroupManagerUpdatePolicy>? updatePolicies;
  final List<GetInstanceGroupManagerVersion>? versions;
  final bool? waitForInstances;
  final String? waitForInstancesStatus;
  final String? zone;

  /// Creates a new [GetInstanceGroupManagerResult].
  /// [allInstancesConfigs] Optional.
  /// [autoHealingPolicies] Optional.
  /// [baseInstanceName] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [fingerprint] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceGroup] Optional.
  /// [instanceGroupManagerId] Optional.
  /// [instanceLifecyclePolicies] Optional.
  /// [listManagedInstancesResults] Optional.
  /// [name] Optional.
  /// [namedPorts] Optional.
  /// [operation] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [resourcePolicies] Optional.
  /// [selfLink] Optional.
  /// [standbyPolicies] Optional.
  /// [statefulDisks] Optional.
  /// [statefulExternalIps] Optional.
  /// [statefulInternalIps] Optional.
  /// [statuses] Optional.
  /// [targetPools] Optional.
  /// [targetSize] Optional.
  /// [targetSizePolicies] Optional.
  /// [targetStoppedSize] Optional.
  /// [targetSuspendedSize] Optional.
  /// [updatePolicies] Optional.
  /// [versions] Optional.
  /// [waitForInstances] Optional.
  /// [waitForInstancesStatus] Optional.
  /// [zone] Optional.
  const GetInstanceGroupManagerResult({
    this.allInstancesConfigs,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.id,
    this.instanceGroup,
    this.instanceGroupManagerId,
    this.instanceLifecyclePolicies,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.operation,
    this.params,
    this.project,
    this.resourcePolicies,
    this.selfLink,
    this.standbyPolicies,
    this.statefulDisks,
    this.statefulExternalIps,
    this.statefulInternalIps,
    this.statuses,
    this.targetPools,
    this.targetSize,
    this.targetSizePolicies,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicies,
    this.versions,
    this.waitForInstances,
    this.waitForInstancesStatus,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': ?(() { final guardedValue = allInstancesConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoHealingPolicies': ?(() { final guardedValue = autoHealingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerAutoHealingPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'baseInstanceName': ?baseInstanceName,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'instanceGroup': ?instanceGroup,
      'instanceGroupManagerId': ?instanceGroupManagerId,
      'instanceLifecyclePolicies': ?(() { final guardedValue = instanceLifecyclePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerInstanceLifecyclePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts': ?(() { final guardedValue = namedPorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerNamedPort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'operation': ?operation,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'resourcePolicies': ?(() { final guardedValue = resourcePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerResourcePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'standbyPolicies': ?(() { final guardedValue = standbyPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerStandbyPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statefulDisks': ?(() { final guardedValue = statefulDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerStatefulDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statefulExternalIps': ?(() { final guardedValue = statefulExternalIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerStatefulExternalIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statefulInternalIps': ?(() { final guardedValue = statefulInternalIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerStatefulInternalIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetSizePolicies': ?(() { final guardedValue = targetSizePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerTargetSizePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicies': ?(() { final guardedValue = updatePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerUpdatePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupManagerVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'waitForInstances': ?waitForInstances,
      'waitForInstancesStatus': ?waitForInstancesStatus,
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupManagerResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResult(
      allInstancesConfigs: (() { final guardedValue = map['allInstancesConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerAllInstancesConfig>(guardedValue, (value) => GetInstanceGroupManagerAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerAutoHealingPolicy>(guardedValue, (value) => GetInstanceGroupManagerAutoHealingPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceGroup: (() { final guardedValue = map['instanceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceGroupManagerId: (() { final guardedValue = map['instanceGroupManagerId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      instanceLifecyclePolicies: (() { final guardedValue = map['instanceLifecyclePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerInstanceLifecyclePolicy>(guardedValue, (value) => GetInstanceGroupManagerInstanceLifecyclePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerNamedPort>(guardedValue, (value) => GetInstanceGroupManagerNamedPort.fromMap((value as Map).cast<String, dynamic>())); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerParam>(guardedValue, (value) => GetInstanceGroupManagerParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerResourcePolicy>(guardedValue, (value) => GetInstanceGroupManagerResourcePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyPolicies: (() { final guardedValue = map['standbyPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerStandbyPolicy>(guardedValue, (value) => GetInstanceGroupManagerStandbyPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      statefulDisks: (() { final guardedValue = map['statefulDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerStatefulDisk>(guardedValue, (value) => GetInstanceGroupManagerStatefulDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      statefulExternalIps: (() { final guardedValue = map['statefulExternalIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerStatefulExternalIp>(guardedValue, (value) => GetInstanceGroupManagerStatefulExternalIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      statefulInternalIps: (() { final guardedValue = map['statefulInternalIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerStatefulInternalIp>(guardedValue, (value) => GetInstanceGroupManagerStatefulInternalIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerStatus>(guardedValue, (value) => GetInstanceGroupManagerStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      targetSizePolicies: (() { final guardedValue = map['targetSizePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerTargetSizePolicy>(guardedValue, (value) => GetInstanceGroupManagerTargetSizePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      updatePolicies: (() { final guardedValue = map['updatePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerUpdatePolicy>(guardedValue, (value) => GetInstanceGroupManagerUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupManagerVersion>(guardedValue, (value) => GetInstanceGroupManagerVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      waitForInstances: (() { final guardedValue = map['waitForInstances']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      waitForInstancesStatus: (() { final guardedValue = map['waitForInstancesStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
