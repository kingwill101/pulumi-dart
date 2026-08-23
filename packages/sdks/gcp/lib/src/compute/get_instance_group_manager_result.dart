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
  final List<GetInstanceGroupManagerAllInstancesConfig> allInstancesConfigs;
  final List<GetInstanceGroupManagerAutoHealingPolicy> autoHealingPolicies;
  final String baseInstanceName;
  final String creationTimestamp;
  final String deletionPolicy;
  final String description;
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceGroup;
  final int instanceGroupManagerId;
  final List<GetInstanceGroupManagerInstanceLifecyclePolicy> instanceLifecyclePolicies;
  final String listManagedInstancesResults;
  final String? name;
  final List<GetInstanceGroupManagerNamedPort> namedPorts;
  final String operation;
  final List<GetInstanceGroupManagerParam> params;
  final String? project;
  final List<GetInstanceGroupManagerResourcePolicy> resourcePolicies;
  final String? selfLink;
  final List<GetInstanceGroupManagerStandbyPolicy> standbyPolicies;
  final List<GetInstanceGroupManagerStatefulDisk> statefulDisks;
  final List<GetInstanceGroupManagerStatefulExternalIp> statefulExternalIps;
  final List<GetInstanceGroupManagerStatefulInternalIp> statefulInternalIps;
  final List<GetInstanceGroupManagerStatus> statuses;
  final List<String> targetPools;
  final int targetSize;
  final List<GetInstanceGroupManagerTargetSizePolicy> targetSizePolicies;
  final int targetStoppedSize;
  final int targetSuspendedSize;
  final List<GetInstanceGroupManagerUpdatePolicy> updatePolicies;
  final List<GetInstanceGroupManagerVersion> versions;
  final bool waitForInstances;
  final String waitForInstancesStatus;
  final String? zone;

  /// Creates a new [GetInstanceGroupManagerResult].
  /// [allInstancesConfigs] Required.
  /// [autoHealingPolicies] Required.
  /// [baseInstanceName] Required.
  /// [creationTimestamp] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [fingerprint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceGroup] Required.
  /// [instanceGroupManagerId] Required.
  /// [instanceLifecyclePolicies] Required.
  /// [listManagedInstancesResults] Required.
  /// [name] Optional.
  /// [namedPorts] Required.
  /// [operation] Required.
  /// [params] Required.
  /// [project] Optional.
  /// [resourcePolicies] Required.
  /// [selfLink] Optional.
  /// [standbyPolicies] Required.
  /// [statefulDisks] Required.
  /// [statefulExternalIps] Required.
  /// [statefulInternalIps] Required.
  /// [statuses] Required.
  /// [targetPools] Required.
  /// [targetSize] Required.
  /// [targetSizePolicies] Required.
  /// [targetStoppedSize] Required.
  /// [targetSuspendedSize] Required.
  /// [updatePolicies] Required.
  /// [versions] Required.
  /// [waitForInstances] Required.
  /// [waitForInstancesStatus] Required.
  /// [zone] Optional.
  const GetInstanceGroupManagerResult({
    required this.allInstancesConfigs,
    required this.autoHealingPolicies,
    required this.baseInstanceName,
    required this.creationTimestamp,
    required this.deletionPolicy,
    required this.description,
    required this.fingerprint,
    required this.id,
    required this.instanceGroup,
    required this.instanceGroupManagerId,
    required this.instanceLifecyclePolicies,
    required this.listManagedInstancesResults,
    this.name,
    required this.namedPorts,
    required this.operation,
    required this.params,
    this.project,
    required this.resourcePolicies,
    this.selfLink,
    required this.standbyPolicies,
    required this.statefulDisks,
    required this.statefulExternalIps,
    required this.statefulInternalIps,
    required this.statuses,
    required this.targetPools,
    required this.targetSize,
    required this.targetSizePolicies,
    required this.targetStoppedSize,
    required this.targetSuspendedSize,
    required this.updatePolicies,
    required this.versions,
    required this.waitForInstances,
    required this.waitForInstancesStatus,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': pulumi.Input.encodeList<GetInstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(allInstancesConfigs, (value) => value.toMap()),
      'autoHealingPolicies': pulumi.Input.encodeList<GetInstanceGroupManagerAutoHealingPolicy, Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap()),
      'baseInstanceName': baseInstanceName,
      'creationTimestamp': creationTimestamp,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'fingerprint': fingerprint,
      'id': id,
      'instanceGroup': instanceGroup,
      'instanceGroupManagerId': instanceGroupManagerId,
      'instanceLifecyclePolicies': pulumi.Input.encodeList<GetInstanceGroupManagerInstanceLifecyclePolicy, Map<String, dynamic>>(instanceLifecyclePolicies, (value) => value.toMap()),
      'listManagedInstancesResults': listManagedInstancesResults,
      'name': ?name,
      'namedPorts': pulumi.Input.encodeList<GetInstanceGroupManagerNamedPort, Map<String, dynamic>>(namedPorts, (value) => value.toMap()),
      'operation': operation,
      'params': pulumi.Input.encodeList<GetInstanceGroupManagerParam, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'resourcePolicies': pulumi.Input.encodeList<GetInstanceGroupManagerResourcePolicy, Map<String, dynamic>>(resourcePolicies, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'standbyPolicies': pulumi.Input.encodeList<GetInstanceGroupManagerStandbyPolicy, Map<String, dynamic>>(standbyPolicies, (value) => value.toMap()),
      'statefulDisks': pulumi.Input.encodeList<GetInstanceGroupManagerStatefulDisk, Map<String, dynamic>>(statefulDisks, (value) => value.toMap()),
      'statefulExternalIps': pulumi.Input.encodeList<GetInstanceGroupManagerStatefulExternalIp, Map<String, dynamic>>(statefulExternalIps, (value) => value.toMap()),
      'statefulInternalIps': pulumi.Input.encodeList<GetInstanceGroupManagerStatefulInternalIp, Map<String, dynamic>>(statefulInternalIps, (value) => value.toMap()),
      'statuses': pulumi.Input.encodeList<GetInstanceGroupManagerStatus, Map<String, dynamic>>(statuses, (value) => value.toMap()),
      'targetPools': targetPools,
      'targetSize': targetSize,
      'targetSizePolicies': pulumi.Input.encodeList<GetInstanceGroupManagerTargetSizePolicy, Map<String, dynamic>>(targetSizePolicies, (value) => value.toMap()),
      'targetStoppedSize': targetStoppedSize,
      'targetSuspendedSize': targetSuspendedSize,
      'updatePolicies': pulumi.Input.encodeList<GetInstanceGroupManagerUpdatePolicy, Map<String, dynamic>>(updatePolicies, (value) => value.toMap()),
      'versions': pulumi.Input.encodeList<GetInstanceGroupManagerVersion, Map<String, dynamic>>(versions, (value) => value.toMap()),
      'waitForInstances': waitForInstances,
      'waitForInstancesStatus': waitForInstancesStatus,
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupManagerResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResult(
      allInstancesConfigs: pulumi.Input.decodeList<GetInstanceGroupManagerAllInstancesConfig>(map['allInstancesConfigs']!, (value) => GetInstanceGroupManagerAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>())),
      autoHealingPolicies: pulumi.Input.decodeList<GetInstanceGroupManagerAutoHealingPolicy>(map['autoHealingPolicies']!, (value) => GetInstanceGroupManagerAutoHealingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      instanceGroup: map['instanceGroup'] as String,
      instanceGroupManagerId: map['instanceGroupManagerId'] as int,
      instanceLifecyclePolicies: pulumi.Input.decodeList<GetInstanceGroupManagerInstanceLifecyclePolicy>(map['instanceLifecyclePolicies']!, (value) => GetInstanceGroupManagerInstanceLifecyclePolicy.fromMap((value as Map).cast<String, dynamic>())),
      listManagedInstancesResults: map['listManagedInstancesResults'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedPorts: pulumi.Input.decodeList<GetInstanceGroupManagerNamedPort>(map['namedPorts']!, (value) => GetInstanceGroupManagerNamedPort.fromMap((value as Map).cast<String, dynamic>())),
      operation: map['operation'] as String,
      params: pulumi.Input.decodeList<GetInstanceGroupManagerParam>(map['params']!, (value) => GetInstanceGroupManagerParam.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePolicies: pulumi.Input.decodeList<GetInstanceGroupManagerResourcePolicy>(map['resourcePolicies']!, (value) => GetInstanceGroupManagerResourcePolicy.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyPolicies: pulumi.Input.decodeList<GetInstanceGroupManagerStandbyPolicy>(map['standbyPolicies']!, (value) => GetInstanceGroupManagerStandbyPolicy.fromMap((value as Map).cast<String, dynamic>())),
      statefulDisks: pulumi.Input.decodeList<GetInstanceGroupManagerStatefulDisk>(map['statefulDisks']!, (value) => GetInstanceGroupManagerStatefulDisk.fromMap((value as Map).cast<String, dynamic>())),
      statefulExternalIps: pulumi.Input.decodeList<GetInstanceGroupManagerStatefulExternalIp>(map['statefulExternalIps']!, (value) => GetInstanceGroupManagerStatefulExternalIp.fromMap((value as Map).cast<String, dynamic>())),
      statefulInternalIps: pulumi.Input.decodeList<GetInstanceGroupManagerStatefulInternalIp>(map['statefulInternalIps']!, (value) => GetInstanceGroupManagerStatefulInternalIp.fromMap((value as Map).cast<String, dynamic>())),
      statuses: pulumi.Input.decodeList<GetInstanceGroupManagerStatus>(map['statuses']!, (value) => GetInstanceGroupManagerStatus.fromMap((value as Map).cast<String, dynamic>())),
      targetPools: (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] as int,
      targetSizePolicies: pulumi.Input.decodeList<GetInstanceGroupManagerTargetSizePolicy>(map['targetSizePolicies']!, (value) => GetInstanceGroupManagerTargetSizePolicy.fromMap((value as Map).cast<String, dynamic>())),
      targetStoppedSize: map['targetStoppedSize'] as int,
      targetSuspendedSize: map['targetSuspendedSize'] as int,
      updatePolicies: pulumi.Input.decodeList<GetInstanceGroupManagerUpdatePolicy>(map['updatePolicies']!, (value) => GetInstanceGroupManagerUpdatePolicy.fromMap((value as Map).cast<String, dynamic>())),
      versions: pulumi.Input.decodeList<GetInstanceGroupManagerVersion>(map['versions']!, (value) => GetInstanceGroupManagerVersion.fromMap((value as Map).cast<String, dynamic>())),
      waitForInstances: map['waitForInstances'] as bool,
      waitForInstancesStatus: map['waitForInstancesStatus'] as String,
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
