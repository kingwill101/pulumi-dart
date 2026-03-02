// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_advanced_machine_features.dart';
import 'restore_workload_compute_instance_restore_properties_allocation_affinity.dart';
import 'restore_workload_compute_instance_restore_properties_confidential_instance_config.dart';
import 'restore_workload_compute_instance_restore_properties_disk.dart';
import 'restore_workload_compute_instance_restore_properties_display_device.dart';
import 'restore_workload_compute_instance_restore_properties_guest_accelerator.dart';
import 'restore_workload_compute_instance_restore_properties_instance_encryption_key.dart';
import 'restore_workload_compute_instance_restore_properties_label.dart';
import 'restore_workload_compute_instance_restore_properties_metadata.dart';
import 'restore_workload_compute_instance_restore_properties_network_interface.dart';
import 'restore_workload_compute_instance_restore_properties_network_performance_config.dart';
import 'restore_workload_compute_instance_restore_properties_params.dart';
import 'restore_workload_compute_instance_restore_properties_scheduling.dart';
import 'restore_workload_compute_instance_restore_properties_service_account.dart';
import 'restore_workload_compute_instance_restore_properties_shielded_instance_config.dart';
import 'restore_workload_compute_instance_restore_properties_tags.dart';

class RestoreWorkloadComputeInstanceRestoreProperties {
  /// Optional. Controls for advanced machine-related behavior features.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures>? advancedMachineFeatures;
  /// Optional. Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity>? allocationAffinity;
  /// Optional. Allows this instance to send and receive packets with non-matching destination or source IPs.
  final pulumi.Input<bool>? canIpForward;
  /// Optional. Controls Confidential compute options on the instance.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// Optional. Whether the resource should be protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// Optional. An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Optional. Array of disks associated with this instance.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesDisk>>? disks;
  /// Optional. Enables display device for the instance.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice>? displayDevice;
  /// Optional. A list of the type and count of accelerator cards attached to the instance.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>>? guestAccelerators;
  /// Optional. Specifies the hostname of the instance.
  final pulumi.Input<String>? hostname;
  /// Optional. Encrypts suspended data for an instance with a customer-managed encryption key.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey>? instanceEncryptionKey;
  /// Optional. KeyRevocationActionType of the instance.
  /// Possible values are: `KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED`, `NONE`, `STOP`.
  final pulumi.Input<String>? keyRevocationActionType;
  /// Optional. Labels to apply to this instance.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesLabel>>? labels;
  /// Optional. Full or partial URL of the machine type resource to use for this instance.
  final pulumi.Input<String>? machineType;
  /// Optional. This includes custom metadata and predefined keys.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesMetadata>? metadata;
  /// Optional. Minimum CPU platform to use for this instance.
  final pulumi.Input<String>? minCpuPlatform;
  /// Required. Name of the compute instance.
  final pulumi.Input<String> name;
  /// Optional. An array of network configurations for this instance.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>>? networkInterfaces;
  /// Optional. Configure network performance such as egress bandwidth tier.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Input only. Additional params passed with the request.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesParams>? params;
  /// Optional. The private IPv6 google access type for the VM.
  /// Possible values are: `INSTANCE_PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED`, `INHERIT_FROM_SUBNETWORK`, `ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE`, `ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE`.
  final pulumi.Input<String>? privateIpv6GoogleAccess;
  /// Optional. Resource policies applied to this instance.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Optional. Sets the scheduling options for this instance.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesScheduling>? scheduling;
  /// Optional. A list of service accounts, with their specified scopes, authorized for this instance.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>>? serviceAccounts;
  /// Optional. Controls Shielded compute options on the instance.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Optional. Tags to apply to this instance.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadComputeInstanceRestorePropertiesTags>? tags;

  /// Creates a new [RestoreWorkloadComputeInstanceRestoreProperties].
  /// [advancedMachineFeatures] Optional. Controls for advanced machine-related behavior features.
  /// [allocationAffinity] Optional. Specifies the reservations that this instance can consume from.
  /// [canIpForward] Optional. Allows this instance to send and receive packets with non-matching destination or source IPs.
  /// [confidentialInstanceConfig] Optional. Controls Confidential compute options on the instance.
  /// [deletionProtection] Optional. Whether the resource should be protected against deletion.
  /// [description] Optional. An optional description of this resource.
  /// [disks] Optional. Array of disks associated with this instance.
  /// [displayDevice] Optional. Enables display device for the instance.
  /// [guestAccelerators] Optional. A list of the type and count of accelerator cards attached to the instance.
  /// [hostname] Optional. Specifies the hostname of the instance.
  /// [instanceEncryptionKey] Optional. Encrypts suspended data for an instance with a customer-managed encryption key.
  /// [keyRevocationActionType] Optional. KeyRevocationActionType of the instance.
  /// [labels] Optional. Labels to apply to this instance.
  /// [machineType] Optional. Full or partial URL of the machine type resource to use for this instance.
  /// [metadata] Optional. This includes custom metadata and predefined keys.
  /// [minCpuPlatform] Optional. Minimum CPU platform to use for this instance.
  /// [name] Required. Name of the compute instance.
  /// [networkInterfaces] Optional. An array of network configurations for this instance.
  /// [networkPerformanceConfig] Optional. Configure network performance such as egress bandwidth tier.
  /// [params] Input only. Additional params passed with the request.
  /// [privateIpv6GoogleAccess] Optional. The private IPv6 google access type for the VM.
  /// [resourcePolicies] Optional. Resource policies applied to this instance.
  /// [scheduling] Optional. Sets the scheduling options for this instance.
  /// [serviceAccounts] Optional. A list of service accounts, with their specified scopes, authorized for this instance.
  /// [shieldedInstanceConfig] Optional. Controls Shielded compute options on the instance.
  /// [tags] Optional. Tags to apply to this instance.
  RestoreWorkloadComputeInstanceRestoreProperties({
    this.advancedMachineFeatures,
    this.allocationAffinity,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    required this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.privateIpv6GoogleAccess,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'allocationAffinity': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity, Map<String, dynamic>>(allocationAffinity, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
      'keyRevocationActionType': ?keyRevocationActionType,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'name': name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesScheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadComputeInstanceRestorePropertiesTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory RestoreWorkloadComputeInstanceRestoreProperties.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestoreProperties(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures.fromMap((map['advancedMachineFeatures']! as Map).cast<String, dynamic>())).input(),
      allocationAffinity: map['allocationAffinity'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesAllocationAffinity.fromMap((map['allocationAffinity']! as Map).cast<String, dynamic>())).input(),
      canIpForward: map['canIpForward'] == null ? null : (map['canIpForward']! as bool).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesDisk>(map['disks']!, (value) => RestoreWorkloadComputeInstanceRestorePropertiesDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayDevice: map['displayDevice'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice.fromMap((map['displayDevice']! as Map).cast<String, dynamic>())).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator>(map['guestAccelerators']!, (value) => RestoreWorkloadComputeInstanceRestorePropertiesGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey.fromMap((map['instanceEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : (map['keyRevocationActionType']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesLabel>(map['labels']!, (value) => RestoreWorkloadComputeInstanceRestorePropertiesLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      metadata: map['metadata'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform']! as String).input(),
      name: (map['name'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface>(map['networkInterfaces']!, (value) => RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig']! as Map).cast<String, dynamic>())).input(),
      params: map['params'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesParams.fromMap((map['params']! as Map).cast<String, dynamic>())).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (map['privateIpv6GoogleAccess']! as String).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies']! as List).cast<String>()).input(),
      scheduling: map['scheduling'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesScheduling.fromMap((map['scheduling']! as Map).cast<String, dynamic>())).input(),
      serviceAccounts: map['serviceAccounts'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount>(map['serviceAccounts']!, (value) => RestoreWorkloadComputeInstanceRestorePropertiesServiceAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (RestoreWorkloadComputeInstanceRestorePropertiesTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

