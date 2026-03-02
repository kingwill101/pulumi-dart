// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'advanced_machine_features.dart';
import 'attached_disk.dart';
import 'confidential_instance_config.dart';
import 'display_device.dart';
import 'instance_properties_key_revocation_action_type.dart';
import 'instance_properties_post_key_revocation_action_type.dart';
import 'instance_properties_private_ipv6_google_access.dart';
import 'metadata.dart';
import 'network_interface.dart';
import 'network_performance_config.dart';
import 'reservation_affinity.dart';
import 'scheduling.dart';
import 'service_account.dart';
import 'shielded_instance_config.dart';
import 'shielded_vm_config.dart';
import 'tags.dart';

class InstanceProperties {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<AdvancedMachineFeatures>? advancedMachineFeatures;
  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final pulumi.Input<bool>? canIpForward;
  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// An optional text description for the instances that are created from these properties.
  final pulumi.Input<String>? description;
  /// An array of disks that are associated with the instances that are created from these properties.
  final pulumi.Input<List<AttachedDisk>>? disks;
  /// Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  final pulumi.Input<DisplayDevice>? displayDevice;
  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final pulumi.Input<List<AcceleratorConfig>>? guestAccelerators;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<InstancePropertiesKeyRevocationActionType>? keyRevocationActionType;
  /// Labels to apply to instances that are created from these properties.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to use for instances that are created from these properties.
  final pulumi.Input<String>? machineType;
  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final pulumi.Input<Metadata>? metadata;
  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final pulumi.Input<String>? minCpuPlatform;
  /// An array of network access configurations for this interface.
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;
  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<NetworkPerformanceConfig>? networkPerformanceConfig;
  /// Partner Metadata assigned to the instance properties. A map from a subdomain (namespace) to entries map.
  final pulumi.Input<Map<String, String>>? partnerMetadata;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<InstancePropertiesPostKeyRevocationActionType>? postKeyRevocationActionType;
  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<InstancePropertiesPrivateIpv6GoogleAccess>? privateIpv6GoogleAccess;
  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ReservationAffinity>? reservationAffinity;
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Specifies the scheduling options for the instances that are created from these properties.
  final pulumi.Input<Scheduling>? scheduling;
  /// [Input Only] Secure tags to apply to this instance. Maximum number of secure tags allowed is 50. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<List<String>>? secureTags;
  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final pulumi.Input<List<ServiceAccount>>? serviceAccounts;
  /// Mapping of user defined keys to ServiceIntegrationSpec.
  final pulumi.Input<Map<String, String>>? serviceIntegrationSpecs;
  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Specifies the Shielded VM options for the instances that are created from these properties.
  final pulumi.Input<ShieldedVmConfig>? shieldedVmConfig;
  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final pulumi.Input<Tags>? tags;

  /// Creates a new [InstanceProperties].
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
  /// [partnerMetadata] Partner Metadata assigned to the instance properties. A map from a subdomain (namespace) to entries map.
  /// [postKeyRevocationActionType] PostKeyRevocationActionType of the instance.
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  /// [reservationAffinity] Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  /// [resourceManagerTags] Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  /// [scheduling] Specifies the scheduling options for the instances that are created from these properties.
  /// [secureTags] [Input Only] Secure tags to apply to this instance. Maximum number of secure tags allowed is 50. Note that for MachineImage, this is not supported yet.
  /// [serviceAccounts] A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  /// [serviceIntegrationSpecs] Mapping of user defined keys to ServiceIntegrationSpec.
  /// [shieldedInstanceConfig] Note that for MachineImage, this is not supported yet.
  /// [shieldedVmConfig] Specifies the Shielded VM options for the instances that are created from these properties.
  /// [tags] A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  InstanceProperties({
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
    this.partnerMetadata,
    this.postKeyRevocationActionType,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.scheduling,
    this.secureTags,
    this.serviceAccounts,
    this.serviceIntegrationSpecs,
    this.shieldedInstanceConfig,
    this.shieldedVmConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeatures, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': ?pulumi.Input.mapOptionalInputValue<DisplayDevice, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfig>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesKeyRevocationActionType, String>(keyRevocationActionType, (value) => value.value),
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<Metadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'postKeyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesPostKeyRevocationActionType, String>(postKeyRevocationActionType, (value) => value.value),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesPrivateIpv6GoogleAccess, String>(privateIpv6GoogleAccess, (value) => value.value),
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<Scheduling, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'secureTags': ?secureTags,
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccount>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceIntegrationSpecs': ?serviceIntegrationSpecs,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedVmConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedVmConfig, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<Tags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : (AdvancedMachineFeatures.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())).input(),
      canIpForward: map['canIpForward'] == null ? null : (map['canIpForward'] as bool).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (ConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<AttachedDisk>(map['disks'], (value) => AttachedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayDevice: map['displayDevice'] == null ? null : (DisplayDevice.fromMap((map['displayDevice'] as Map).cast<String, dynamic>())).input(),
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfig>(map['guestAccelerators'], (value) => AcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : (InstancePropertiesKeyRevocationActionType.fromValue(map['keyRevocationActionType'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      metadata: map['metadata'] == null ? null : (Metadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterface>(map['networkInterfaces'], (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : (NetworkPerformanceConfig.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>())).input(),
      partnerMetadata: map['partnerMetadata'] == null ? null : ((map['partnerMetadata'] as Map).cast<String, String>()).input(),
      postKeyRevocationActionType: map['postKeyRevocationActionType'] == null ? null : (InstancePropertiesPostKeyRevocationActionType.fromValue(map['postKeyRevocationActionType'] as String)).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (InstancePropertiesPrivateIpv6GoogleAccess.fromValue(map['privateIpv6GoogleAccess'] as String)).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (ReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies'] as List).cast<String>()).input(),
      scheduling: map['scheduling'] == null ? null : (Scheduling.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      secureTags: map['secureTags'] == null ? null : ((map['secureTags'] as List).cast<String>()).input(),
      serviceAccounts: map['serviceAccounts'] == null ? null : (pulumi.Input.decodeList<ServiceAccount>(map['serviceAccounts'], (value) => ServiceAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceIntegrationSpecs: map['serviceIntegrationSpecs'] == null ? null : ((map['serviceIntegrationSpecs'] as Map).cast<String, String>()).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      shieldedVmConfig: map['shieldedVmConfig'] == null ? null : (ShieldedVmConfig.fromMap((map['shieldedVmConfig'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (Tags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

