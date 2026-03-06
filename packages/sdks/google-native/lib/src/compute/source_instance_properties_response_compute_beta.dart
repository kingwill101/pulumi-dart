// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_beta.dart';
import 'metadata_response_compute_beta.dart';
import 'network_interface_response_compute_beta.dart';
import 'saved_attached_disk_response_compute_beta.dart';
import 'scheduling_response_compute_beta.dart';
import 'service_account_response_compute_beta.dart';
import 'tags_response_compute_beta.dart';

/// DEPRECATED: Please use compute#instanceProperties instead. New properties will not be added to this field.
class SourceInstancePropertiesResponseComputeBeta {
  /// Enables instances created based on this machine image to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final pulumi.Input<bool> canIpForward;
  /// Whether the instance created from this machine image should be protected against deletion.
  final pulumi.Input<bool> deletionProtection;
  /// An optional text description for the instances that are created from this machine image.
  final pulumi.Input<String> description;
  /// An array of disks that are associated with the instances that are created from this machine image.
  final pulumi.Input<List<SavedAttachedDiskResponseComputeBeta>> disks;
  /// A list of guest accelerator cards' type and count to use for instances created from this machine image.
  final pulumi.Input<List<AcceleratorConfigResponseComputeBeta>> guestAccelerators;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<String> keyRevocationActionType;
  /// Labels to apply to instances that are created from this machine image.
  final pulumi.Input<Map<String, String>> labels;
  /// The machine type to use for instances that are created from this machine image.
  final pulumi.Input<String> machineType;
  /// The metadata key/value pairs to assign to instances that are created from this machine image. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final pulumi.Input<MetadataResponseComputeBeta> metadata;
  /// Minimum cpu/platform to be used by instances created from this machine image. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final pulumi.Input<String> minCpuPlatform;
  /// An array of network access configurations for this interface.
  final pulumi.Input<List<NetworkInterfaceResponseComputeBeta>> networkInterfaces;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<String> postKeyRevocationActionType;
  /// Specifies the scheduling options for the instances that are created from this machine image.
  final pulumi.Input<SchedulingResponseComputeBeta> scheduling;
  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from this machine image. Use metadata queries to obtain the access tokens for these instances.
  final pulumi.Input<List<ServiceAccountResponseComputeBeta>> serviceAccounts;
  /// A list of tags to apply to the instances that are created from this machine image. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final pulumi.Input<TagsResponseComputeBeta> tags;

  /// Creates a new [SourceInstancePropertiesResponseComputeBeta].
  /// [canIpForward] Enables instances created based on this machine image to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  /// [deletionProtection] Whether the instance created from this machine image should be protected against deletion.
  /// [description] An optional text description for the instances that are created from this machine image.
  /// [disks] An array of disks that are associated with the instances that are created from this machine image.
  /// [guestAccelerators] A list of guest accelerator cards' type and count to use for instances created from this machine image.
  /// [keyRevocationActionType] KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  /// [labels] Labels to apply to instances that are created from this machine image.
  /// [machineType] The machine type to use for instances that are created from this machine image.
  /// [metadata] The metadata key/value pairs to assign to instances that are created from this machine image. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  /// [minCpuPlatform] Minimum cpu/platform to be used by instances created from this machine image. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  /// [networkInterfaces] An array of network access configurations for this interface.
  /// [postKeyRevocationActionType] PostKeyRevocationActionType of the instance.
  /// [scheduling] Specifies the scheduling options for the instances that are created from this machine image.
  /// [serviceAccounts] A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from this machine image. Use metadata queries to obtain the access tokens for these instances.
  /// [tags] A list of tags to apply to the instances that are created from this machine image. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  const SourceInstancePropertiesResponseComputeBeta({
    required this.canIpForward,
    required this.deletionProtection,
    required this.description,
    required this.disks,
    required this.guestAccelerators,
    required this.keyRevocationActionType,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.minCpuPlatform,
    required this.networkInterfaces,
    required this.postKeyRevocationActionType,
    required this.scheduling,
    required this.serviceAccounts,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canIpForward': canIpForward,
      'deletionProtection': deletionProtection,
      'description': description,
      'disks': pulumi.Input.mapInputValue<List<SavedAttachedDiskResponseComputeBeta>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<SavedAttachedDiskResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestAccelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponseComputeBeta>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyRevocationActionType': keyRevocationActionType,
      'labels': labels,
      'machineType': machineType,
      'metadata': pulumi.Input.mapInputValue<MetadataResponseComputeBeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponseComputeBeta>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postKeyRevocationActionType': postKeyRevocationActionType,
      'scheduling': pulumi.Input.mapInputValue<SchedulingResponseComputeBeta, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccounts': pulumi.Input.mapInputValue<List<ServiceAccountResponseComputeBeta>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<TagsResponseComputeBeta, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory SourceInstancePropertiesResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceInstancePropertiesResponseComputeBeta(
      canIpForward: pulumi.Input.fromValue(map['canIpForward'] as bool),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<SavedAttachedDiskResponseComputeBeta>(map['disks']!, (value) => SavedAttachedDiskResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      guestAccelerators: pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigResponseComputeBeta>(map['guestAccelerators']!, (value) => AcceleratorConfigResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      keyRevocationActionType: pulumi.Input.fromValue(map['keyRevocationActionType'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: pulumi.Input.fromValue(MetadataResponseComputeBeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponseComputeBeta>(map['networkInterfaces']!, (value) => NetworkInterfaceResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      postKeyRevocationActionType: pulumi.Input.fromValue(map['postKeyRevocationActionType'] as String),
      scheduling: pulumi.Input.fromValue(SchedulingResponseComputeBeta.fromMap((map['scheduling']! as Map).cast<String, dynamic>())),
      serviceAccounts: pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAccountResponseComputeBeta>(map['serviceAccounts']!, (value) => ServiceAccountResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue(TagsResponseComputeBeta.fromMap((map['tags']! as Map).cast<String, dynamic>())),
    );
  }
}

