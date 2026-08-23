// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_beta.dart';
import 'advanced_machine_features_compute_beta.dart';
import 'attached_disk_compute_beta.dart';
import 'confidential_instance_config_compute_beta.dart';
import 'display_device_compute_beta.dart';
import 'instance_properties_key_revocation_action_type_compute_beta.dart';
import 'instance_properties_post_key_revocation_action_type_compute_beta.dart';
import 'instance_properties_private_ipv6_google_access_compute_beta.dart';
import 'metadata_compute_beta.dart';
import 'network_interface_compute_beta.dart';
import 'network_performance_config_compute_beta.dart';
import 'reservation_affinity_compute_beta.dart';
import 'scheduling_compute_beta.dart';
import 'service_account_compute_beta.dart';
import 'shielded_instance_config_compute_beta.dart';
import 'shielded_vm_config_compute_beta.dart';
import 'tags_compute_beta.dart';

class InstancePropertiesComputeBeta {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<AdvancedMachineFeaturesComputeBeta>? advancedMachineFeatures;
  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final pulumi.Input<bool>? canIpForward;
  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ConfidentialInstanceConfigComputeBeta>? confidentialInstanceConfig;
  /// An optional text description for the instances that are created from these properties.
  final pulumi.Input<String>? description;
  /// An array of disks that are associated with the instances that are created from these properties.
  final pulumi.Input<List<AttachedDiskComputeBeta>>? disks;
  /// Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  final pulumi.Input<DisplayDeviceComputeBeta>? displayDevice;
  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final pulumi.Input<List<AcceleratorConfigComputeBeta>>? guestAccelerators;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<InstancePropertiesKeyRevocationActionTypeComputeBeta>? keyRevocationActionType;
  /// Labels to apply to instances that are created from these properties.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to use for instances that are created from these properties.
  final pulumi.Input<String>? machineType;
  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final pulumi.Input<MetadataComputeBeta>? metadata;
  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final pulumi.Input<String>? minCpuPlatform;
  /// An array of network access configurations for this interface.
  final pulumi.Input<List<NetworkInterfaceComputeBeta>>? networkInterfaces;
  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<NetworkPerformanceConfigComputeBeta>? networkPerformanceConfig;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<InstancePropertiesPostKeyRevocationActionTypeComputeBeta>? postKeyRevocationActionType;
  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<InstancePropertiesPrivateIpv6GoogleAccessComputeBeta>? privateIpv6GoogleAccess;
  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ReservationAffinityComputeBeta>? reservationAffinity;
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Specifies the scheduling options for the instances that are created from these properties.
  final pulumi.Input<SchedulingComputeBeta>? scheduling;
  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final pulumi.Input<List<ServiceAccountComputeBeta>>? serviceAccounts;
  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ShieldedInstanceConfigComputeBeta>? shieldedInstanceConfig;
  /// Specifies the Shielded VM options for the instances that are created from these properties.
  final pulumi.Input<ShieldedVmConfigComputeBeta>? shieldedVmConfig;
  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final pulumi.Input<TagsComputeBeta>? tags;

  /// Creates a new [InstancePropertiesComputeBeta].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  /// [canIpForward] Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  /// [confidentialInstanceConfig] Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  /// [description] An optional text description for the instances that are created from these properties.
  /// [disks] An array of disks that are associated with the instances that are created from these properties.
  /// [displayDevice] Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  /// [guestAccelerators] A list of guest accelerator cards' type and count to use for instances created from these properties.
  /// [keyRevocationActionType] KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  /// [labels] Labels to apply to instances that are created from these properties.
  /// [machineType] The machine type to use for instances that are created from these properties.
  /// [metadata] The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  /// [minCpuPlatform] Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  /// [networkInterfaces] An array of network access configurations for this interface.
  /// [networkPerformanceConfig] Note that for MachineImage, this is not supported yet.
  /// [postKeyRevocationActionType] PostKeyRevocationActionType of the instance.
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  /// [reservationAffinity] Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  /// [resourceManagerTags] Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  /// [scheduling] Specifies the scheduling options for the instances that are created from these properties.
  /// [serviceAccounts] A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  /// [shieldedInstanceConfig] Note that for MachineImage, this is not supported yet.
  /// [shieldedVmConfig] Specifies the Shielded VM options for the instances that are created from these properties.
  /// [tags] A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  const InstancePropertiesComputeBeta({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.description,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.postKeyRevocationActionType,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.shieldedVmConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeaturesComputeBeta, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfigComputeBeta, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDiskComputeBeta>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDiskComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': ?pulumi.Input.mapOptionalInputValue<DisplayDeviceComputeBeta, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigComputeBeta>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesKeyRevocationActionTypeComputeBeta, String>(keyRevocationActionType, (value) => value.wireValue),
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataComputeBeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceComputeBeta>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigComputeBeta, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'postKeyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesPostKeyRevocationActionTypeComputeBeta, String>(postKeyRevocationActionType, (value) => value.wireValue),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesPrivateIpv6GoogleAccessComputeBeta, String>(privateIpv6GoogleAccess, (value) => value.wireValue),
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityComputeBeta, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<SchedulingComputeBeta, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccountComputeBeta>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigComputeBeta, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedVmConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedVmConfigComputeBeta, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<TagsComputeBeta, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory InstancePropertiesComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesComputeBeta(
      advancedMachineFeatures: (() { final guardedValue = map['advancedMachineFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedMachineFeaturesComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfidentialInstanceConfigComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AttachedDiskComputeBeta>(guardedValue, (value) => AttachedDiskComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayDevice: (() { final guardedValue = map['displayDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DisplayDeviceComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigComputeBeta>(guardedValue, (value) => AcceleratorConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keyRevocationActionType: (() { final guardedValue = map['keyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePropertiesKeyRevocationActionTypeComputeBeta.fromValue(guardedValue as String)); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceComputeBeta>(guardedValue, (value) => NetworkInterfaceComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkPerformanceConfig: (() { final guardedValue = map['networkPerformanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPerformanceConfigComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postKeyRevocationActionType: (() { final guardedValue = map['postKeyRevocationActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePropertiesPostKeyRevocationActionTypeComputeBeta.fromValue(guardedValue as String)); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePropertiesPrivateIpv6GoogleAccessComputeBeta.fromValue(guardedValue as String)); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationAffinityComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scheduling: (() { final guardedValue = map['scheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchedulingComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccounts: (() { final guardedValue = map['serviceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAccountComputeBeta>(guardedValue, (value) => ServiceAccountComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedInstanceConfigComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shieldedVmConfig: (() { final guardedValue = map['shieldedVmConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedVmConfigComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagsComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
