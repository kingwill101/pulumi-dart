// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_all_instances_config.dart';
import 'instance_group_manager_auto_healing_policies.dart';
import 'instance_group_manager_instance_lifecycle_policy.dart';
import 'instance_group_manager_named_port.dart';
import 'instance_group_manager_params.dart';
import 'instance_group_manager_resource_policies.dart';
import 'instance_group_manager_standby_policy.dart';
import 'instance_group_manager_stateful_disk.dart';
import 'instance_group_manager_stateful_external_ip.dart';
import 'instance_group_manager_stateful_internal_ip.dart';
import 'instance_group_manager_status.dart';
import 'instance_group_manager_update_policy.dart';
import 'instance_group_manager_version.dart';

/// Input properties used for looking up and filtering InstanceGroupManager resources.
class InstanceGroupManagerState {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final pulumi.Input<InstanceGroupManagerAllInstancesConfig>? allInstancesConfig;
  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  final pulumi.Input<InstanceGroupManagerAutoHealingPolicies>? autoHealingPolicies;
  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  final pulumi.Input<String>? baseInstanceName;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional textual description of the instance
  /// group manager.
  final pulumi.Input<String>? description;
  /// The fingerprint of the instance group manager.
  final pulumi.Input<String>? fingerprint;
  /// The full URL of the instance group created by the manager.
  final pulumi.Input<String>? instanceGroup;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? instanceGroupManagerId;
  /// The instance lifecycle policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicy>? instanceLifecyclePolicy;
  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  final pulumi.Input<String>? listManagedInstancesResults;
  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final pulumi.Input<String>? name;
  /// The named port configuration. See the section below
  /// for details on configuration.
  final pulumi.Input<List<InstanceGroupManagerNamedPort>>? namedPorts;
  final pulumi.Input<String>? operation;
  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  final pulumi.Input<InstanceGroupManagerParams>? params;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Resource policies for this managed instance group. Structure is documented below.
  ///
  /// - - -
  final pulumi.Input<InstanceGroupManagerResourcePolicies>? resourcePolicies;
  /// The URL of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  final pulumi.Input<InstanceGroupManagerStandbyPolicy>? standbyPolicy;
  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs).
  final pulumi.Input<List<InstanceGroupManagerStatefulDisk>>? statefulDisks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<InstanceGroupManagerStatefulExternalIp>>? statefulExternalIps;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<InstanceGroupManagerStatefulInternalIp>>? statefulInternalIps;
  /// The status of this managed instance group.
  final pulumi.Input<List<InstanceGroupManagerStatus>>? statuses;
  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  final pulumi.Input<List<String>>? targetPools;
  /// The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  final pulumi.Input<int>? targetSize;
  /// The target number of stopped instances for this managed instance group.
  final pulumi.Input<int>? targetStoppedSize;
  /// The target number of suspended instances for this managed instance group.
  final pulumi.Input<int>? targetSuspendedSize;
  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch).
  final pulumi.Input<InstanceGroupManagerUpdatePolicy>? updatePolicy;
  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGroupManagerVersion>>? versions;
  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, this provider will
  /// continue trying until it times out.
  final pulumi.Input<bool>? waitForInstances;
  /// When used with `wait_for_instances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  final pulumi.Input<String>? waitForInstancesStatus;
  /// The zone that instances in this group should be created
  /// in.
  ///
  /// - - -
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerState].
  /// [allInstancesConfig] Properties to set on all instances in the group. After setting
  /// [autoHealingPolicies] The autohealing policies for this managed instance
  /// [baseInstanceName] The base instance name to use for
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional textual description of the instance
  /// [fingerprint] The fingerprint of the instance group manager.
  /// [instanceGroup] The full URL of the instance group created by the manager.
  /// [instanceGroupManagerId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [instanceLifecyclePolicy] The instance lifecycle policy for this managed instance group.
  /// [listManagedInstancesResults] Pagination behavior of the `listManagedInstances` API
  /// [name] The name of the instance group manager. Must be 1-63
  /// [namedPorts] The named port configuration. See the section below
  /// [operation] Optional.
  /// [params] Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [resourcePolicies] Resource policies for this managed instance group. Structure is documented below.
  /// [selfLink] The URL of the created resource.
  /// [standbyPolicy] The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  /// [statefulDisks] Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs).
  /// [statefulExternalIps] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [statefulInternalIps] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [statuses] The status of this managed instance group.
  /// [targetPools] The full URL of all target pools to which new
  /// [targetSize] The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group.
  /// [updatePolicy] The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch).
  /// [versions] Application versions managed by this instance group. Each
  /// [waitForInstances] Whether to wait for all instances to be created/updated before
  /// [waitForInstancesStatus] When used with `wait_for_instances` it specifies the status to wait for.
  /// [zone] The zone that instances in this group should be created
  const InstanceGroupManagerState({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.instanceGroup,
    this.instanceGroupManagerId,
    this.instanceLifecyclePolicy,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.operation,
    this.params,
    this.project,
    this.resourcePolicies,
    this.selfLink,
    this.standbyPolicy,
    this.statefulDisks,
    this.statefulExternalIps,
    this.statefulInternalIps,
    this.statuses,
    this.targetPools,
    this.targetSize,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    this.versions,
    this.waitForInstances,
    this.waitForInstancesStatus,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerAutoHealingPolicies, Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap()),
      'baseInstanceName': ?baseInstanceName,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'instanceGroup': ?instanceGroup,
      'instanceGroupManagerId': ?instanceGroupManagerId,
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicy, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerNamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<InstanceGroupManagerNamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operation': ?operation,
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'resourcePolicies': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerResourcePolicies, Map<String, dynamic>>(resourcePolicies, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'standbyPolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerStandbyPolicy, Map<String, dynamic>>(standbyPolicy, (value) => value.toMap()),
      'statefulDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerStatefulDisk>, List<Map<String, dynamic>>>(statefulDisks, (value) => pulumi.Input.encodeList<InstanceGroupManagerStatefulDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulExternalIps': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerStatefulExternalIp>, List<Map<String, dynamic>>>(statefulExternalIps, (value) => pulumi.Input.encodeList<InstanceGroupManagerStatefulExternalIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulInternalIps': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerStatefulInternalIp>, List<Map<String, dynamic>>>(statefulInternalIps, (value) => pulumi.Input.encodeList<InstanceGroupManagerStatefulInternalIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceGroupManagerStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicy, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
      'versions': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<InstanceGroupManagerVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForInstances': ?waitForInstances,
      'waitForInstancesStatus': ?waitForInstancesStatus,
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerState.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerState(
      allInstancesConfig: (() { final guardedValue = map['allInstancesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerAllInstancesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerAutoHealingPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceGroup: (() { final guardedValue = map['instanceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceGroupManagerId: (() { final guardedValue = map['instanceGroupManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerInstanceLifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerNamedPort>(guardedValue, (value) => InstanceGroupManagerNamedPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerResourcePolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyPolicy: (() { final guardedValue = map['standbyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerStandbyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulDisks: (() { final guardedValue = map['statefulDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerStatefulDisk>(guardedValue, (value) => InstanceGroupManagerStatefulDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statefulExternalIps: (() { final guardedValue = map['statefulExternalIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerStatefulExternalIp>(guardedValue, (value) => InstanceGroupManagerStatefulExternalIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statefulInternalIps: (() { final guardedValue = map['statefulInternalIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerStatefulInternalIp>(guardedValue, (value) => InstanceGroupManagerStatefulInternalIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerStatus>(guardedValue, (value) => InstanceGroupManagerStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerVersion>(guardedValue, (value) => InstanceGroupManagerVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitForInstances: (() { final guardedValue = map['waitForInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      waitForInstancesStatus: (() { final guardedValue = map['waitForInstancesStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

