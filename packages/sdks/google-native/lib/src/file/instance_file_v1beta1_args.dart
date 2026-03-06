// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_services_config.dart';
import 'file_share_config_file_v1beta1.dart';
import 'instance_protocol.dart';
import 'instance_tier_file_v1beta1.dart';
import 'network_config_file_v1beta1.dart';

/// {@template pulumi_file_v1beta1_instance_file_v1beta1_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_instance_file_v1beta1_args_doc}
class InstanceFileV1beta1Args {
  /// The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  final pulumi.Input<String>? capacityGb;
  /// The description of the instance (2048 characters or less).
  final pulumi.Input<String>? description;
  /// Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  final pulumi.Input<DirectoryServicesConfig>? directoryServices;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final pulumi.Input<String>? etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  final pulumi.Input<List<FileShareConfigFileV1beta1>>? fileShares;
  /// Required. The ID of the instance to create. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String> instanceId;
  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The max number of shares allowed.
  final pulumi.Input<String>? maxShareCount;
  /// Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  final pulumi.Input<bool>? multiShareEnabled;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final pulumi.Input<List<NetworkConfigFileV1beta1>>? networks;
  final pulumi.Input<String>? project;
  /// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  final pulumi.Input<InstanceProtocol>? protocol;
  /// The service tier of the instance.
  final pulumi.Input<InstanceTierFileV1beta1>? tier;

  /// Creates a new [InstanceFileV1beta1Args].
  /// [capacityGb] The storage capacity of the instance in gigabytes (GB = 1024^3 bytes). This capacity can be increased up to `max_capacity_gb` GB in multipliers of `capacity_step_size_gb` GB.
  /// [description] The description of the instance (2048 characters or less).
  /// [directoryServices] Directory Services configuration for Kerberos-based authentication. Should only be set if protocol is "NFS_V4_1".
  /// [etag] Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  /// [fileShares] File system shares on the instance. For this version, only a single file share is supported.
  /// [instanceId] Required. The ID of the instance to create. The ID must be unique within the specified project and location. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [maxShareCount] The max number of shares allowed.
  /// [multiShareEnabled] Indicates whether this instance uses a multi-share configuration with which it can have more than one file-share or none at all. File-shares are added, updated and removed through the separate file-share APIs.
  /// [networks] VPC networks to which the instance is connected. For this version, only a single network is supported.
  /// [project] Optional.
  /// [protocol] Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  /// [tier] The service tier of the instance.
  const InstanceFileV1beta1Args({
    this.capacityGb,
    this.description,
    this.directoryServices,
    this.etag,
    this.fileShares,
    required this.instanceId,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.maxShareCount,
    this.multiShareEnabled,
    this.networks,
    this.project,
    this.protocol,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': ?capacityGb,
      'description': ?description,
      'directoryServices': ?pulumi.Input.mapOptionalInputValue<DirectoryServicesConfig, Map<String, dynamic>>(directoryServices, (value) => value.toMap()),
      'etag': ?etag,
      'fileShares': ?pulumi.Input.mapOptionalInputValue<List<FileShareConfigFileV1beta1>, List<Map<String, dynamic>>>(fileShares, (value) => pulumi.Input.encodeList<FileShareConfigFileV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': instanceId,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'maxShareCount': ?maxShareCount,
      'multiShareEnabled': ?multiShareEnabled,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<NetworkConfigFileV1beta1>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<NetworkConfigFileV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'protocol': ?pulumi.Input.mapOptionalInputValue<InstanceProtocol, String>(protocol, (value) => value.wireValue),
      'tier': ?pulumi.Input.mapOptionalInputValue<InstanceTierFileV1beta1, String>(tier, (value) => value.wireValue),
    };
  }

  factory InstanceFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return InstanceFileV1beta1Args(
      capacityGb: (() { final guardedValue = map['capacityGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryServices: (() { final guardedValue = map['directoryServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryServicesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShares: (() { final guardedValue = map['fileShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileShareConfigFileV1beta1>(guardedValue, (value) => FileShareConfigFileV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxShareCount: (() { final guardedValue = map['maxShareCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiShareEnabled: (() { final guardedValue = map['multiShareEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkConfigFileV1beta1>(guardedValue, (value) => NetworkConfigFileV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceProtocol.fromValue(guardedValue as String)); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTierFileV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

