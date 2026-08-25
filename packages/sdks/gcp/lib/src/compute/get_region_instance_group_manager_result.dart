// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_all_instances_config.dart';
import 'get_region_instance_group_manager_auto_healing_policy.dart';
import 'get_region_instance_group_manager_instance_flexibility_policy.dart';
import 'get_region_instance_group_manager_instance_lifecycle_policy.dart';
import 'get_region_instance_group_manager_named_port.dart';
import 'get_region_instance_group_manager_param.dart';
import 'get_region_instance_group_manager_resource_policy.dart';
import 'get_region_instance_group_manager_standby_policy.dart';
import 'get_region_instance_group_manager_stateful_disk.dart';
import 'get_region_instance_group_manager_stateful_external_ip.dart';
import 'get_region_instance_group_manager_stateful_internal_ip.dart';
import 'get_region_instance_group_manager_status.dart';
import 'get_region_instance_group_manager_target_size_policy.dart';
import 'get_region_instance_group_manager_update_policy.dart';
import 'get_region_instance_group_manager_version.dart';

/// Result data returned by getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerResult {
  final List<GetRegionInstanceGroupManagerAllInstancesConfig>? allInstancesConfigs;
  final List<GetRegionInstanceGroupManagerAutoHealingPolicy>? autoHealingPolicies;
  final String? baseInstanceName;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final String? distributionPolicyTargetShape;
  final List<String>? distributionPolicyZones;
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetRegionInstanceGroupManagerInstanceFlexibilityPolicy>? instanceFlexibilityPolicies;
  final String? instanceGroup;
  final int? instanceGroupManagerId;
  final List<GetRegionInstanceGroupManagerInstanceLifecyclePolicy>? instanceLifecyclePolicies;
  final String? listManagedInstancesResults;
  final String? name;
  final List<GetRegionInstanceGroupManagerNamedPort>? namedPorts;
  final List<GetRegionInstanceGroupManagerParam>? params;
  final String? project;
  final String? region;
  final List<GetRegionInstanceGroupManagerResourcePolicy>? resourcePolicies;
  final String? selfLink;
  final List<GetRegionInstanceGroupManagerStandbyPolicy>? standbyPolicies;
  final List<GetRegionInstanceGroupManagerStatefulDisk>? statefulDisks;
  final List<GetRegionInstanceGroupManagerStatefulExternalIp>? statefulExternalIps;
  final List<GetRegionInstanceGroupManagerStatefulInternalIp>? statefulInternalIps;
  final List<GetRegionInstanceGroupManagerStatus>? statuses;
  final List<String>? targetPools;
  final int? targetSize;
  final List<GetRegionInstanceGroupManagerTargetSizePolicy>? targetSizePolicies;
  final int? targetStoppedSize;
  final int? targetSuspendedSize;
  final List<GetRegionInstanceGroupManagerUpdatePolicy>? updatePolicies;
  final List<GetRegionInstanceGroupManagerVersion>? versions;
  final bool? waitForInstances;
  final String? waitForInstancesStatus;

  /// Creates a new [GetRegionInstanceGroupManagerResult].
  /// [allInstancesConfigs] Optional.
  /// [autoHealingPolicies] Optional.
  /// [baseInstanceName] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [distributionPolicyTargetShape] Optional.
  /// [distributionPolicyZones] Optional.
  /// [fingerprint] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceFlexibilityPolicies] Optional.
  /// [instanceGroup] Optional.
  /// [instanceGroupManagerId] Optional.
  /// [instanceLifecyclePolicies] Optional.
  /// [listManagedInstancesResults] Optional.
  /// [name] Optional.
  /// [namedPorts] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [region] Optional.
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
  const GetRegionInstanceGroupManagerResult({
    this.allInstancesConfigs,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.distributionPolicyTargetShape,
    this.distributionPolicyZones,
    this.fingerprint,
    this.id,
    this.instanceFlexibilityPolicies,
    this.instanceGroup,
    this.instanceGroupManagerId,
    this.instanceLifecyclePolicies,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.params,
    this.project,
    this.region,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': ?(() { final guardedValue = allInstancesConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoHealingPolicies': ?(() { final guardedValue = autoHealingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerAutoHealingPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'baseInstanceName': ?baseInstanceName,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'distributionPolicyTargetShape': ?distributionPolicyTargetShape,
      'distributionPolicyZones': ?distributionPolicyZones,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'instanceFlexibilityPolicies': ?(() { final guardedValue = instanceFlexibilityPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerInstanceFlexibilityPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceGroup': ?instanceGroup,
      'instanceGroupManagerId': ?instanceGroupManagerId,
      'instanceLifecyclePolicies': ?(() { final guardedValue = instanceLifecyclePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerInstanceLifecyclePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts': ?(() { final guardedValue = namedPorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerNamedPort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'region': ?region,
      'resourcePolicies': ?(() { final guardedValue = resourcePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerResourcePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'standbyPolicies': ?(() { final guardedValue = standbyPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerStandbyPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statefulDisks': ?(() { final guardedValue = statefulDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatefulDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statefulExternalIps': ?(() { final guardedValue = statefulExternalIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatefulExternalIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statefulInternalIps': ?(() { final guardedValue = statefulInternalIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatefulInternalIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetSizePolicies': ?(() { final guardedValue = targetSizePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerTargetSizePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicies': ?(() { final guardedValue = updatePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerUpdatePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionInstanceGroupManagerVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'waitForInstances': ?waitForInstances,
      'waitForInstancesStatus': ?waitForInstancesStatus,
    };
  }

  factory GetRegionInstanceGroupManagerResult.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerResult(
      allInstancesConfigs: (() { final guardedValue = map['allInstancesConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerAllInstancesConfig>(guardedValue, (value) => GetRegionInstanceGroupManagerAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerAutoHealingPolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerAutoHealingPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionPolicyTargetShape: (() { final guardedValue = map['distributionPolicyTargetShape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionPolicyZones: (() { final guardedValue = map['distributionPolicyZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceFlexibilityPolicies: (() { final guardedValue = map['instanceFlexibilityPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerInstanceFlexibilityPolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceGroup: (() { final guardedValue = map['instanceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceGroupManagerId: (() { final guardedValue = map['instanceGroupManagerId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      instanceLifecyclePolicies: (() { final guardedValue = map['instanceLifecyclePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerInstanceLifecyclePolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerInstanceLifecyclePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerNamedPort>(guardedValue, (value) => GetRegionInstanceGroupManagerNamedPort.fromMap((value as Map).cast<String, dynamic>())); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerParam>(guardedValue, (value) => GetRegionInstanceGroupManagerParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerResourcePolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerResourcePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyPolicies: (() { final guardedValue = map['standbyPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerStandbyPolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerStandbyPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      statefulDisks: (() { final guardedValue = map['statefulDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatefulDisk>(guardedValue, (value) => GetRegionInstanceGroupManagerStatefulDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      statefulExternalIps: (() { final guardedValue = map['statefulExternalIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatefulExternalIp>(guardedValue, (value) => GetRegionInstanceGroupManagerStatefulExternalIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      statefulInternalIps: (() { final guardedValue = map['statefulInternalIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatefulInternalIp>(guardedValue, (value) => GetRegionInstanceGroupManagerStatefulInternalIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatus>(guardedValue, (value) => GetRegionInstanceGroupManagerStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      targetSizePolicies: (() { final guardedValue = map['targetSizePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerTargetSizePolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerTargetSizePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      updatePolicies: (() { final guardedValue = map['updatePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerUpdatePolicy>(guardedValue, (value) => GetRegionInstanceGroupManagerUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionInstanceGroupManagerVersion>(guardedValue, (value) => GetRegionInstanceGroupManagerVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      waitForInstances: (() { final guardedValue = map['waitForInstances']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      waitForInstancesStatus: (() { final guardedValue = map['waitForInstancesStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
