// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_beta.dart';
import 'advanced_machine_features_response_compute_beta.dart';
import 'attached_disk_response_compute_beta.dart';
import 'confidential_instance_config_response_compute_beta.dart';
import 'display_device_response_compute_beta.dart';
import 'metadata_response_compute_beta.dart';
import 'network_interface_response_compute_beta.dart';
import 'network_performance_config_response_compute_beta.dart';
import 'reservation_affinity_response_compute_beta.dart';
import 'scheduling_response_compute_beta.dart';
import 'service_account_response_compute_beta.dart';
import 'shielded_instance_config_response_compute_beta.dart';
import 'shielded_vm_config_response_compute_beta.dart';
import 'tags_response_compute_beta.dart';

class InstancePropertiesResponseComputeBeta {
  /// Controls for advanced machine-related behavior features. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<AdvancedMachineFeaturesResponseComputeBeta>
  advancedMachineFeatures;

  /// Enables instances created based on these properties to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final pulumi.Input<bool> canIpForward;

  /// Specifies the Confidential Instance options. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ConfidentialInstanceConfigResponseComputeBeta>
  confidentialInstanceConfig;

  /// An optional text description for the instances that are created from these properties.
  final pulumi.Input<String> description;

  /// An array of disks that are associated with the instances that are created from these properties.
  final pulumi.Input<List<AttachedDiskResponseComputeBeta>> disks;

  /// Display Device properties to enable support for remote display products like: Teradici, VNC and TeamViewer Note that for MachineImage, this is not supported yet.
  final pulumi.Input<DisplayDeviceResponseComputeBeta> displayDevice;

  /// A list of guest accelerator cards' type and count to use for instances created from these properties.
  final pulumi.Input<List<AcceleratorConfigResponseComputeBeta>>
  guestAccelerators;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<String> keyRevocationActionType;

  /// Labels to apply to instances that are created from these properties.
  final pulumi.Input<Map<String, String>> labels;

  /// The machine type to use for instances that are created from these properties.
  final pulumi.Input<String> machineType;

  /// The metadata key/value pairs to assign to instances that are created from these properties. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final pulumi.Input<MetadataResponseComputeBeta> metadata;

  /// Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final pulumi.Input<String> minCpuPlatform;

  /// An array of network access configurations for this interface.
  final pulumi.Input<List<NetworkInterfaceResponseComputeBeta>>
  networkInterfaces;

  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<NetworkPerformanceConfigResponseComputeBeta>
  networkPerformanceConfig;

  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<String> postKeyRevocationActionType;

  /// The private IPv6 google access type for VMs. If not specified, use INHERIT_FROM_SUBNETWORK as default. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<String> privateIpv6GoogleAccess;

  /// Specifies the reservations that instances can consume from. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ReservationAffinityResponseComputeBeta>
  reservationAffinity;

  /// Resource manager tags to be bound to the instance. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Resource policies (names, not URLs) applied to instances created from these properties. Note that for MachineImage, this is not supported yet.
  final pulumi.Input<List<String>> resourcePolicies;

  /// Specifies the scheduling options for the instances that are created from these properties.
  final pulumi.Input<SchedulingResponseComputeBeta> scheduling;

  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from these properties. Use metadata queries to obtain the access tokens for these instances.
  final pulumi.Input<List<ServiceAccountResponseComputeBeta>> serviceAccounts;

  /// Note that for MachineImage, this is not supported yet.
  final pulumi.Input<ShieldedInstanceConfigResponseComputeBeta>
  shieldedInstanceConfig;

  /// Specifies the Shielded VM options for the instances that are created from these properties.
  final pulumi.Input<ShieldedVmConfigResponseComputeBeta> shieldedVmConfig;

  /// A list of tags to apply to the instances that are created from these properties. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final pulumi.Input<TagsResponseComputeBeta> tags;

  /// Creates a new [InstancePropertiesResponseComputeBeta].
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
  InstancePropertiesResponseComputeBeta({
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
    required this.postKeyRevocationActionType,
    required this.privateIpv6GoogleAccess,
    required this.reservationAffinity,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.scheduling,
    required this.serviceAccounts,
    required this.shieldedInstanceConfig,
    required this.shieldedVmConfig,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures':
          pulumi.Input.mapInputValue<
            AdvancedMachineFeaturesResponseComputeBeta,
            Map<String, dynamic>
          >(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': canIpForward,
      'confidentialInstanceConfig':
          pulumi.Input.mapInputValue<
            ConfidentialInstanceConfigResponseComputeBeta,
            Map<String, dynamic>
          >(confidentialInstanceConfig, (value) => value.toMap()),
      'description': description,
      'disks':
          pulumi.Input.mapInputValue<
            List<AttachedDiskResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  AttachedDiskResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'displayDevice':
          pulumi.Input.mapInputValue<
            DisplayDeviceResponseComputeBeta,
            Map<String, dynamic>
          >(displayDevice, (value) => value.toMap()),
      'guestAccelerators':
          pulumi.Input.mapInputValue<
            List<AcceleratorConfigResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            guestAccelerators,
            (value) =>
                pulumi.Input.encodeList<
                  AcceleratorConfigResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'keyRevocationActionType': keyRevocationActionType,
      'labels': labels,
      'machineType': machineType,
      'metadata':
          pulumi.Input.mapInputValue<
            MetadataResponseComputeBeta,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'networkInterfaces':
          pulumi.Input.mapInputValue<
            List<NetworkInterfaceResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkInterfaceResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkPerformanceConfig':
          pulumi.Input.mapInputValue<
            NetworkPerformanceConfigResponseComputeBeta,
            Map<String, dynamic>
          >(networkPerformanceConfig, (value) => value.toMap()),
      'postKeyRevocationActionType': postKeyRevocationActionType,
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'reservationAffinity':
          pulumi.Input.mapInputValue<
            ReservationAffinityResponseComputeBeta,
            Map<String, dynamic>
          >(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': resourceManagerTags,
      'resourcePolicies': resourcePolicies,
      'scheduling':
          pulumi.Input.mapInputValue<
            SchedulingResponseComputeBeta,
            Map<String, dynamic>
          >(scheduling, (value) => value.toMap()),
      'serviceAccounts':
          pulumi.Input.mapInputValue<
            List<ServiceAccountResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            serviceAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceAccountResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'shieldedInstanceConfig':
          pulumi.Input.mapInputValue<
            ShieldedInstanceConfigResponseComputeBeta,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedVmConfig':
          pulumi.Input.mapInputValue<
            ShieldedVmConfigResponseComputeBeta,
            Map<String, dynamic>
          >(shieldedVmConfig, (value) => value.toMap()),
      'tags':
          pulumi.Input.mapInputValue<
            TagsResponseComputeBeta,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory InstancePropertiesResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstancePropertiesResponseComputeBeta(
      advancedMachineFeatures: pulumi.Input.fromValue(
        AdvancedMachineFeaturesResponseComputeBeta.fromMap(
          (map['advancedMachineFeatures']! as Map).cast<String, dynamic>(),
        ),
      ),
      canIpForward: pulumi.Input.fromValue(map['canIpForward'] as bool),
      confidentialInstanceConfig: pulumi.Input.fromValue(
        ConfidentialInstanceConfigResponseComputeBeta.fromMap(
          (map['confidentialInstanceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      disks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AttachedDiskResponseComputeBeta>(
          map['disks']!,
          (value) => AttachedDiskResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      displayDevice: pulumi.Input.fromValue(
        DisplayDeviceResponseComputeBeta.fromMap(
          (map['displayDevice']! as Map).cast<String, dynamic>(),
        ),
      ),
      guestAccelerators: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AcceleratorConfigResponseComputeBeta>(
          map['guestAccelerators']!,
          (value) => AcceleratorConfigResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      keyRevocationActionType: pulumi.Input.fromValue(
        map['keyRevocationActionType'] as String,
      ),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: pulumi.Input.fromValue(
        MetadataResponseComputeBeta.fromMap(
          (map['metadata']! as Map).cast<String, dynamic>(),
        ),
      ),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      networkInterfaces: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NetworkInterfaceResponseComputeBeta>(
          map['networkInterfaces']!,
          (value) => NetworkInterfaceResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      networkPerformanceConfig: pulumi.Input.fromValue(
        NetworkPerformanceConfigResponseComputeBeta.fromMap(
          (map['networkPerformanceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      postKeyRevocationActionType: pulumi.Input.fromValue(
        map['postKeyRevocationActionType'] as String,
      ),
      privateIpv6GoogleAccess: pulumi.Input.fromValue(
        map['privateIpv6GoogleAccess'] as String,
      ),
      reservationAffinity: pulumi.Input.fromValue(
        ReservationAffinityResponseComputeBeta.fromMap(
          (map['reservationAffinity']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceManagerTags: pulumi.Input.fromValue(
        (map['resourceManagerTags'] as Map).cast<String, String>(),
      ),
      resourcePolicies: pulumi.Input.fromValue(
        (map['resourcePolicies'] as List).cast<String>(),
      ),
      scheduling: pulumi.Input.fromValue(
        SchedulingResponseComputeBeta.fromMap(
          (map['scheduling']! as Map).cast<String, dynamic>(),
        ),
      ),
      serviceAccounts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ServiceAccountResponseComputeBeta>(
          map['serviceAccounts']!,
          (value) => ServiceAccountResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      shieldedInstanceConfig: pulumi.Input.fromValue(
        ShieldedInstanceConfigResponseComputeBeta.fromMap(
          (map['shieldedInstanceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      shieldedVmConfig: pulumi.Input.fromValue(
        ShieldedVmConfigResponseComputeBeta.fromMap(
          (map['shieldedVmConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: pulumi.Input.fromValue(
        TagsResponseComputeBeta.fromMap(
          (map['tags']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
