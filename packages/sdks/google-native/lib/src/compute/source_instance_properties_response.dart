// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'metadata_response.dart';
import 'network_interface_response.dart';
import 'saved_attached_disk_response.dart';
import 'scheduling_response.dart';
import 'service_account_response.dart';
import 'tags_response.dart';

/// DEPRECATED: Please use compute#instanceProperties instead. New properties will not be added to this field.
class SourceInstancePropertiesResponse {
  /// Enables instances created based on this machine image to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information.
  final pulumi.Input<bool> canIpForward;
  /// Whether the instance created from this machine image should be protected against deletion.
  final pulumi.Input<bool> deletionProtection;
  /// An optional text description for the instances that are created from this machine image.
  final pulumi.Input<String> description;
  /// An array of disks that are associated with the instances that are created from this machine image.
  final pulumi.Input<List<SavedAttachedDiskResponse>> disks;
  /// A list of guest accelerator cards' type and count to use for instances created from this machine image.
  final pulumi.Input<List<AcceleratorConfigResponse>> guestAccelerators;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<String> keyRevocationActionType;
  /// Labels to apply to instances that are created from this machine image.
  final pulumi.Input<Map<String, String>> labels;
  /// The machine type to use for instances that are created from this machine image.
  final pulumi.Input<String> machineType;
  /// The metadata key/value pairs to assign to instances that are created from this machine image. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information.
  final pulumi.Input<MetadataResponse> metadata;
  /// Minimum cpu/platform to be used by instances created from this machine image. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform.
  final pulumi.Input<String> minCpuPlatform;
  /// An array of network access configurations for this interface.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<String> postKeyRevocationActionType;
  /// Specifies the scheduling options for the instances that are created from this machine image.
  final pulumi.Input<SchedulingResponse> scheduling;
  /// A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from this machine image. Use metadata queries to obtain the access tokens for these instances.
  final pulumi.Input<List<ServiceAccountResponse>> serviceAccounts;
  /// A list of tags to apply to the instances that are created from this machine image. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035.
  final pulumi.Input<TagsResponse> tags;

  /// Creates a new [SourceInstancePropertiesResponse].
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
  SourceInstancePropertiesResponse({
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
      'disks': pulumi.Input.mapInputValue<List<SavedAttachedDiskResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<SavedAttachedDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guestAccelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponse>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyRevocationActionType': keyRevocationActionType,
      'labels': labels,
      'machineType': machineType,
      'metadata': pulumi.Input.mapInputValue<MetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postKeyRevocationActionType': postKeyRevocationActionType,
      'scheduling': pulumi.Input.mapInputValue<SchedulingResponse, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccounts': pulumi.Input.mapInputValue<List<ServiceAccountResponse>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': pulumi.Input.mapInputValue<TagsResponse, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory SourceInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SourceInstancePropertiesResponse(
      canIpForward: (map['canIpForward'] as bool).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      description: (map['description'] as String).input(),
      disks: (pulumi.Input.decodeList<SavedAttachedDiskResponse>(map['disks'], (value) => SavedAttachedDiskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      guestAccelerators: (pulumi.Input.decodeList<AcceleratorConfigResponse>(map['guestAccelerators'], (value) => AcceleratorConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keyRevocationActionType: (map['keyRevocationActionType'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      machineType: (map['machineType'] as String).input(),
      metadata: (MetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: (map['minCpuPlatform'] as String).input(),
      networkInterfaces: (pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      postKeyRevocationActionType: (map['postKeyRevocationActionType'] as String).input(),
      scheduling: (SchedulingResponse.fromMap((map['scheduling'] as Map).cast<String, dynamic>())).input(),
      serviceAccounts: (pulumi.Input.decodeList<ServiceAccountResponse>(map['serviceAccounts'], (value) => ServiceAccountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: (TagsResponse.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

