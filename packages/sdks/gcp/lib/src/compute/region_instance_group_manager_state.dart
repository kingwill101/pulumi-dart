// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_all_instances_config.dart';
import 'region_instance_group_manager_auto_healing_policies.dart';
import 'region_instance_group_manager_instance_flexibility_policy.dart';
import 'region_instance_group_manager_instance_lifecycle_policy.dart';
import 'region_instance_group_manager_named_port.dart';
import 'region_instance_group_manager_params.dart';
import 'region_instance_group_manager_resource_policies.dart';
import 'region_instance_group_manager_standby_policy.dart';
import 'region_instance_group_manager_stateful_disk.dart';
import 'region_instance_group_manager_stateful_external_ip.dart';
import 'region_instance_group_manager_stateful_internal_ip.dart';
import 'region_instance_group_manager_status.dart';
import 'region_instance_group_manager_target_size_policy.dart';
import 'region_instance_group_manager_update_policy.dart';
import 'region_instance_group_manager_version.dart';

/// Input properties used for looking up and filtering RegionInstanceGroupManager resources.
class RegionInstanceGroupManagerState {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final pulumi.Input<RegionInstanceGroupManagerAllInstancesConfig?>? allInstancesConfig;
  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  final pulumi.Input<RegionInstanceGroupManagerAutoHealingPolicies?>? autoHealingPolicies;
  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  final pulumi.Input<String?>? baseInstanceName;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional textual description of the instance
  /// group manager.
  final pulumi.Input<String?>? description;
  /// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  final pulumi.Input<String?>? distributionPolicyTargetShape;
  /// The distribution policy for this managed instance
  /// group. You can specify one or more values. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups#selectingzones).
  final pulumi.Input<List<String>?>? distributionPolicyZones;
  /// The fingerprint of the instance group manager.
  final pulumi.Input<String?>? fingerprint;
  /// The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  final pulumi.Input<RegionInstanceGroupManagerInstanceFlexibilityPolicy?>? instanceFlexibilityPolicy;
  /// The full URL of the instance group created by the manager.
  final pulumi.Input<String?>? instanceGroup;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int?>? instanceGroupManagerId;
  /// The instance lifecycle policy for this managed instance group.
  final pulumi.Input<RegionInstanceGroupManagerInstanceLifecyclePolicy?>? instanceLifecyclePolicy;
  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  final pulumi.Input<String?>? listManagedInstancesResults;
  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final pulumi.Input<String?>? name;
  /// The named port configuration. See the section below
  /// for details on configuration.
  final pulumi.Input<List<RegionInstanceGroupManagerNamedPort>?>? namedPorts;
  /// ) Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  final pulumi.Input<RegionInstanceGroupManagerParams?>? params;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region where the managed instance group resides. If not provided, the provider region is used.
  final pulumi.Input<String?>? region;
  /// Resource policies for this managed instance group. Structure is documented below.
  ///
  /// - - -
  final pulumi.Input<RegionInstanceGroupManagerResourcePolicies?>? resourcePolicies;
  /// The URL of the created resource.
  final pulumi.Input<String?>? selfLink;
  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  final pulumi.Input<RegionInstanceGroupManagerStandbyPolicy?>? standbyPolicy;
  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the `updatePolicy`.
  final pulumi.Input<List<RegionInstanceGroupManagerStatefulDisk>?>? statefulDisks;
  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerStatefulExternalIp>?>? statefulExternalIps;
  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerStatefulInternalIp>?>? statefulInternalIps;
  /// The status of this managed instance group.
  final pulumi.Input<List<RegionInstanceGroupManagerStatus>?>? statuses;
  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  final pulumi.Input<List<String>?>? targetPools;
  /// The target number of running instances for this managed
  /// instance group. This value will fight with autoscaler settings when set, and generally shouldn't be set
  /// when using one. If a value is required, such as to specify a creation-time target size for the MIG,
  /// `lifecycle.ignore_changes` can be used to prevent Terraform from modifying the value. Defaults to `0`.
  final pulumi.Input<int?>? targetSize;
  /// The policy that specifies how the MIG creates its VMs to achieve the target size. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerTargetSizePolicy>?>? targetSizePolicies;
  /// The target number of stopped instances for this managed instance group.
  final pulumi.Input<int?>? targetStoppedSize;
  /// The target number of suspended instances for this managed instance group.
  final pulumi.Input<int?>? targetSuspendedSize;
  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  final pulumi.Input<RegionInstanceGroupManagerUpdatePolicy?>? updatePolicy;
  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerVersion>?>? versions;
  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, the provider will
  /// continue trying until it times out.
  final pulumi.Input<bool?>? waitForInstances;
  /// When used with `waitForInstances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  final pulumi.Input<String?>? waitForInstancesStatus;

  /// Creates a new [RegionInstanceGroupManagerState].
  /// [allInstancesConfig] Properties to set on all instances in the group. After setting
  /// [autoHealingPolicies] The autohealing policies for this managed instance
  /// [baseInstanceName] The base instance name to use for
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] An optional textual description of the instance
  /// [distributionPolicyTargetShape] The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  /// [distributionPolicyZones] The distribution policy for this managed instance
  /// [fingerprint] The fingerprint of the instance group manager.
  /// [instanceFlexibilityPolicy] The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  /// [instanceGroup] The full URL of the instance group created by the manager.
  /// [instanceGroupManagerId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [instanceLifecyclePolicy] The instance lifecycle policy for this managed instance group.
  /// [listManagedInstancesResults] Pagination behavior of the `listManagedInstances` API
  /// [name] The name of the instance group manager. Must be 1-63
  /// [namedPorts] The named port configuration. See the section below
  /// [params] ) Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region where the managed instance group resides. If not provided, the provider region is used.
  /// [resourcePolicies] Resource policies for this managed instance group. Structure is documented below.
  /// [selfLink] The URL of the created resource.
  /// [standbyPolicy] The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  /// [statefulDisks] Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the `updatePolicy`.
  /// [statefulExternalIps] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [statefulInternalIps] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [statuses] The status of this managed instance group.
  /// [targetPools] The full URL of all target pools to which new
  /// [targetSize] The target number of running instances for this managed
  /// [targetSizePolicies] The policy that specifies how the MIG creates its VMs to achieve the target size. Structure is documented below.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group.
  /// [updatePolicy] The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  /// [versions] Application versions managed by this instance group. Each
  /// [waitForInstances] Whether to wait for all instances to be created/updated before
  /// [waitForInstancesStatus] When used with `waitForInstances` it specifies the status to wait for.
  const RegionInstanceGroupManagerState({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.distributionPolicyTargetShape,
    this.distributionPolicyZones,
    this.fingerprint,
    this.instanceFlexibilityPolicy,
    this.instanceGroup,
    this.instanceGroupManagerId,
    this.instanceLifecyclePolicy,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.params,
    this.project,
    this.region,
    this.resourcePolicies,
    this.selfLink,
    this.standbyPolicy,
    this.statefulDisks,
    this.statefulExternalIps,
    this.statefulInternalIps,
    this.statuses,
    this.targetPools,
    this.targetSize,
    this.targetSizePolicies,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    this.versions,
    this.waitForInstances,
    this.waitForInstancesStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerAutoHealingPolicies, Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap()),
      'baseInstanceName': ?baseInstanceName,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'distributionPolicyTargetShape': ?distributionPolicyTargetShape,
      'distributionPolicyZones': ?distributionPolicyZones,
      'fingerprint': ?fingerprint,
      'instanceFlexibilityPolicy': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerInstanceFlexibilityPolicy, Map<String, dynamic>>(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceGroup': ?instanceGroup,
      'instanceGroupManagerId': ?instanceGroupManagerId,
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerInstanceLifecyclePolicy, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerNamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerNamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'params': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'resourcePolicies': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerResourcePolicies, Map<String, dynamic>>(resourcePolicies, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'standbyPolicy': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerStandbyPolicy, Map<String, dynamic>>(standbyPolicy, (value) => value.toMap()),
      'statefulDisks': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerStatefulDisk>, List<Map<String, dynamic>>>(statefulDisks, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerStatefulDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulExternalIps': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerStatefulExternalIp>, List<Map<String, dynamic>>>(statefulExternalIps, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerStatefulExternalIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulInternalIps': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerStatefulInternalIp>, List<Map<String, dynamic>>>(statefulInternalIps, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerStatefulInternalIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetSizePolicies': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerTargetSizePolicy>, List<Map<String, dynamic>>>(targetSizePolicies, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerTargetSizePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<RegionInstanceGroupManagerUpdatePolicy, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
      'versions': ?pulumi.Input.mapOptionalInputValue<List<RegionInstanceGroupManagerVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<RegionInstanceGroupManagerVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForInstances': ?waitForInstances,
      'waitForInstancesStatus': ?waitForInstancesStatus,
    };
  }

  factory RegionInstanceGroupManagerState.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerState(
      allInstancesConfig: (() { final guardedValue = map['allInstancesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerAllInstancesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoHealingPolicies: (() { final guardedValue = map['autoHealingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerAutoHealingPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baseInstanceName: (() { final guardedValue = map['baseInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionPolicyTargetShape: (() { final guardedValue = map['distributionPolicyTargetShape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionPolicyZones: (() { final guardedValue = map['distributionPolicyZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceFlexibilityPolicy: (() { final guardedValue = map['instanceFlexibilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceGroup: (() { final guardedValue = map['instanceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceGroupManagerId: (() { final guardedValue = map['instanceGroupManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerInstanceLifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listManagedInstancesResults: (() { final guardedValue = map['listManagedInstancesResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerNamedPort>(guardedValue, (value) => RegionInstanceGroupManagerNamedPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerResourcePolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standbyPolicy: (() { final guardedValue = map['standbyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerStandbyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulDisks: (() { final guardedValue = map['statefulDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerStatefulDisk>(guardedValue, (value) => RegionInstanceGroupManagerStatefulDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statefulExternalIps: (() { final guardedValue = map['statefulExternalIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerStatefulExternalIp>(guardedValue, (value) => RegionInstanceGroupManagerStatefulExternalIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statefulInternalIps: (() { final guardedValue = map['statefulInternalIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerStatefulInternalIp>(guardedValue, (value) => RegionInstanceGroupManagerStatefulInternalIp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerStatus>(guardedValue, (value) => RegionInstanceGroupManagerStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetPools: (() { final guardedValue = map['targetPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetSize: (() { final guardedValue = map['targetSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetSizePolicies: (() { final guardedValue = map['targetSizePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerTargetSizePolicy>(guardedValue, (value) => RegionInstanceGroupManagerTargetSizePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetStoppedSize: (() { final guardedValue = map['targetStoppedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetSuspendedSize: (() { final guardedValue = map['targetSuspendedSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      updatePolicy: (() { final guardedValue = map['updatePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceGroupManagerUpdatePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstanceGroupManagerVersion>(guardedValue, (value) => RegionInstanceGroupManagerVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitForInstances: (() { final guardedValue = map['waitForInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      waitForInstancesStatus: (() { final guardedValue = map['waitForInstancesStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
