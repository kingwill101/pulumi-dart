// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'advanced_machine_features_response.dart';
import 'attached_disk_response.dart';
import 'confidential_instance_config_response.dart';
import 'display_device_response.dart';
import 'metadata_response.dart';
import 'network_interface_response.dart';
import 'network_performance_config_response.dart';
import 'reservation_affinity_response.dart';
import 'scheduling_response.dart';
import 'service_account_response.dart';
import 'shielded_instance_config_response.dart';
import 'shielded_vm_config_response.dart';
import 'tags_response.dart';

class InstancePropertiesResponse {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<AdvancedMachineFeaturesResponse> advancedMachineFeatures;
  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final pulumi.Input<bool> canIpForward;
  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ConfidentialInstanceConfigResponse> confidentialInstanceConfig;
  /// An optional text description for the instances that are created from these properties.
  final pulumi.Input<String> description;
  /// An array of disks that are associated with the instances that are created from these properties.
  final pulumi.Input<List<AttachedDiskResponse>> disks;
  /// Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  final pulumi.Input<DisplayDeviceResponse> displayDevice;
  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final pulumi.Input<List<AcceleratorConfigResponse>> guestAccelerators;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<String> keyRevocationActionType;
  /// Labels to apply to instances that are created from these properties.
  final pulumi.Input<Map<String, String>> labels;
  /// The machine type to use for instances that are created from these properties.
  final pulumi.Input<String> machineType;
  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final pulumi.Input<MetadataResponse> metadata;
  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final pulumi.Input<String> minCpuPlatform;
  /// An array of network access configurations for this interface.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<NetworkPerformanceConfigResponse> networkPerformanceConfig;
  /// Partner Metadata assigned to the instance properties. A map from a subdomain (namespace) to entries map.
  final pulumi.Input<Map<String, String>> partnerMetadata;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<String> postKeyRevocationActionType;
  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<String> privateIpv6GoogleAccess;
  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ReservationAffinityResponse> reservationAffinity;
  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;
  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<List<String>> resourcePolicies;
  /// Specifies the scheduling options for the instances that are created from these properties.
  final pulumi.Input<SchedulingResponse> scheduling;
  /// [Input Only] Secure tags to apply to this instance. Maximum number of secure tags allowed is 50. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<List<String>> secureTags;
  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final pulumi.Input<List<ServiceAccountResponse>> serviceAccounts;
  /// Mapping of user defined keys to ServiceIntegrationSpec.
  final pulumi.Input<Map<String, String>> serviceIntegrationSpecs;
  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ShieldedInstanceConfigResponse> shieldedInstanceConfig;
  /// Specifies the Shielded VM options for the instances that are created from these properties.
  final pulumi.Input<ShieldedVmConfigResponse> shieldedVmConfig;
  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final pulumi.Input<TagsResponse> tags;

  /// Creates a new [InstancePropertiesResponse].
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
  InstancePropertiesResponse({
    required this.advancedMachineFeatures,
    required this.canIpForward,
    required this.confidentialInstanceConfig,
    required this.description,
    required this.disks,
    required this.displayDevice,
    required this.guestAccelerators,
    required this.keyRevocationActionType,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.minCpuPlatform,
    required this.networkInterfaces,
    required this.networkPerformanceConfig,
    required this.partnerMetadata,
    required this.postKeyRevocationActionType,
    required this.privateIpv6GoogleAccess,
    required this.reservationAffinity,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.scheduling,
    required this.secureTags,
    required this.serviceAccounts,
    required this.serviceIntegrationSpecs,
    required this.shieldedInstanceConfig,
    required this.shieldedVmConfig,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': pulumi.Input.mapInputValue<AdvancedMachineFeaturesResponse, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': canIpForward,
      'confidentialInstanceConfig': pulumi.Input.mapInputValue<ConfidentialInstanceConfigResponse, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'description': description,
      'disks': pulumi.Input.mapInputValue<List<AttachedDiskResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': pulumi.Input.mapInputValue<DisplayDeviceResponse, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'guestAccelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponse>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyRevocationActionType': keyRevocationActionType,
      'labels': labels,
      'machineType': machineType,
      'metadata': pulumi.Input.mapInputValue<MetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': pulumi.Input.mapInputValue<NetworkPerformanceConfigResponse, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'partnerMetadata': partnerMetadata,
      'postKeyRevocationActionType': postKeyRevocationActionType,
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'reservationAffinity': pulumi.Input.mapInputValue<ReservationAffinityResponse, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': resourceManagerTags,
      'resourcePolicies': resourcePolicies,
      'scheduling': pulumi.Input.mapInputValue<SchedulingResponse, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'secureTags': secureTags,
      'serviceAccounts': pulumi.Input.mapInputValue<List<ServiceAccountResponse>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceIntegrationSpecs': serviceIntegrationSpecs,
      'shieldedInstanceConfig': pulumi.Input.mapInputValue<ShieldedInstanceConfigResponse, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedVmConfig': pulumi.Input.mapInputValue<ShieldedVmConfigResponse, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'tags': pulumi.Input.mapInputValue<TagsResponse, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      advancedMachineFeatures: (AdvancedMachineFeaturesResponse.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>())).input(),
      canIpForward: (map['canIpForward'] as bool).input(),
      confidentialInstanceConfig: (ConfidentialInstanceConfigResponse.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      disks: (pulumi.Input.decodeList<AttachedDiskResponse>(map['disks'], (value) => AttachedDiskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayDevice: (DisplayDeviceResponse.fromMap((map['displayDevice'] as Map).cast<String, dynamic>())).input(),
      guestAccelerators: (pulumi.Input.decodeList<AcceleratorConfigResponse>(map['guestAccelerators'], (value) => AcceleratorConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyRevocationActionType: (map['keyRevocationActionType'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      machineType: (map['machineType'] as String).input(),
      metadata: (MetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: (map['minCpuPlatform'] as String).input(),
      networkInterfaces: (pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkPerformanceConfig: (NetworkPerformanceConfigResponse.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>())).input(),
      partnerMetadata: ((map['partnerMetadata'] as Map).cast<String, String>()).input(),
      postKeyRevocationActionType: (map['postKeyRevocationActionType'] as String).input(),
      privateIpv6GoogleAccess: (map['privateIpv6GoogleAccess'] as String).input(),
      reservationAffinity: (ReservationAffinityResponse.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      resourceManagerTags: ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
      resourcePolicies: ((map['resourcePolicies'] as List).cast<String>()).input(),
      scheduling: (SchedulingResponse.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      secureTags: ((map['secureTags'] as List).cast<String>()).input(),
      serviceAccounts: (pulumi.Input.decodeList<ServiceAccountResponse>(map['serviceAccounts'], (value) => ServiceAccountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceIntegrationSpecs: ((map['serviceIntegrationSpecs'] as Map).cast<String, String>()).input(),
      shieldedInstanceConfig: (ShieldedInstanceConfigResponse.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      shieldedVmConfig: (ShieldedVmConfigResponse.fromMap((map['shieldedVmConfig'] as Map).cast<String, dynamic>())).input(),
      tags: (TagsResponse.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

