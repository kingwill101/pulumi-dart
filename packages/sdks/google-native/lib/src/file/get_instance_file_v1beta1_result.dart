// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_services_config_response.dart';
import 'file_share_config_response_file_v1beta1.dart';
import 'network_config_response_file_v1beta1.dart';

/// Result data returned by getInstance.
class GetInstanceFileV1beta1Result {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  final String capacityGb;
  /// The increase/decrease capacity step size.
  final String capacityStepSizeGb;
  /// The time when the instance was created.
  final String createTime;
  /// The description of the instance (2048 characters or less).
  final String description;
  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  final DirectoryServicesConfigResponse directoryServices;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final String etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  final List<FileShareConfigResponseFileV1beta1> fileShares;
  /// KMS key name used for data encryption.
  final String kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// The max capacity of the instance.
  final String maxCapacityGb;
  /// The max number of shares allowed.
  final String maxShareCount;
  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  final bool multiShareEnabled;
  /// The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
  final String name;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final List<NetworkConfigResponseFileV1beta1> networks;
  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  final String protocol;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// The instance state.
  final String state;
  /// Additional information about the instance state, if available.
  final String statusMessage;
  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  final List<String> suspensionReasons;
  /// The service tier of the instance.
  final String tier;

  /// Creates a new [GetInstanceFileV1beta1Result].
  /// [capacityGb] The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  /// [capacityStepSizeGb] The increase/decrease capacity step size.
  /// [createTime] The time when the instance was created.
  /// [description] The description of the instance (2048 characters or less).
  /// [directoryServices] Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  /// [etag] Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  /// [fileShares] File system shares on the instance. For this version, only a single file share is supported.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [maxCapacityGb] The max capacity of the instance.
  /// [maxShareCount] The max number of shares allowed.
  /// [multiShareEnabled] Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  /// [name] The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}`.
  /// [networks] VPC networks to which the instance is connected. For this version, only a single network is supported.
  /// [protocol] Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  /// [satisfiesPzs] Reserved for future use.
  /// [state] The instance state.
  /// [statusMessage] Additional information about the instance state, if available.
  /// [suspensionReasons] Field indicates all the reasons the instance is in "SUSPENDED" state.
  /// [tier] The service tier of the instance.
  const GetInstanceFileV1beta1Result({
    required this.capacityGb,
    required this.capacityStepSizeGb,
    required this.createTime,
    required this.description,
    required this.directoryServices,
    required this.etag,
    required this.fileShares,
    required this.kmsKeyName,
    required this.labels,
    required this.maxCapacityGb,
    required this.maxShareCount,
    required this.multiShareEnabled,
    required this.name,
    required this.networks,
    required this.protocol,
    required this.satisfiesPzs,
    required this.state,
    required this.statusMessage,
    required this.suspensionReasons,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'capacityStepSizeGb': capacityStepSizeGb,
      'createTime': createTime,
      'description': description,
      'directoryServices': directoryServices.toMap(),
      'etag': etag,
      'fileShares': pulumi.Input.encodeList<FileShareConfigResponseFileV1beta1, Map<String, dynamic>>(fileShares, (value) => value.toMap()),
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'maxCapacityGb': maxCapacityGb,
      'maxShareCount': maxShareCount,
      'multiShareEnabled': multiShareEnabled,
      'name': name,
      'networks': pulumi.Input.encodeList<NetworkConfigResponseFileV1beta1, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'protocol': protocol,
      'satisfiesPzs': satisfiesPzs,
      'state': state,
      'statusMessage': statusMessage,
      'suspensionReasons': suspensionReasons,
      'tier': tier,
    };
  }

  factory GetInstanceFileV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceFileV1beta1Result(
      capacityGb: map['capacityGb'] as String,
      capacityStepSizeGb: map['capacityStepSizeGb'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      directoryServices: DirectoryServicesConfigResponse.fromMap((map['directoryServices']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      fileShares: pulumi.Input.decodeList<FileShareConfigResponseFileV1beta1>(map['fileShares']!, (value) => FileShareConfigResponseFileV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxCapacityGb: map['maxCapacityGb'] as String,
      maxShareCount: map['maxShareCount'] as String,
      multiShareEnabled: map['multiShareEnabled'] as bool,
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<NetworkConfigResponseFileV1beta1>(map['networks']!, (value) => NetworkConfigResponseFileV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      protocol: map['protocol'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      suspensionReasons: (map['suspensionReasons'] as List).cast<String>(),
      tier: map['tier'] as String,
    );
  }
}

