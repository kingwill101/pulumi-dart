// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_config.dart';
import 'instance_tier.dart';
import 'network_config.dart';

/// {@template pulumi_file_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_file_v1_instance_args_doc}
class InstanceArgs {
  /// The description of the instance (2048 characters or less).
  final pulumi.Input<String>? description;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final pulumi.Input<String>? etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  final pulumi.Input<List<FileShareConfig>>? fileShares;
  /// Required. The name of the instance to create. The name must be unique for the specified project and location.
  final pulumi.Input<String> instanceId;
  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final pulumi.Input<List<NetworkConfig>>? networks;
  final pulumi.Input<String>? project;
  /// The service tier of the instance.
  final pulumi.Input<InstanceTier>? tier;

  /// Creates a new [InstanceArgs].
  /// [description] The description of the instance (2048 characters or less).
  /// [etag] Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  /// [fileShares] File system shares on the instance. For this version, only a single file share is supported.
  /// [instanceId] Required. The name of the instance to create. The name must be unique for the specified project and location.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [networks] VPC networks to which the instance is connected. For this version, only a single network is supported.
  /// [project] Optional.
  /// [tier] The service tier of the instance.
  const InstanceArgs({
    this.description,
    this.etag,
    this.fileShares,
    required this.instanceId,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.networks,
    this.project,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'fileShares': ?pulumi.Input.mapOptionalInputValue<List<FileShareConfig>, List<Map<String, dynamic>>>(fileShares, (value) => pulumi.Input.encodeList<FileShareConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': instanceId,
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<NetworkConfig>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<NetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'tier': ?pulumi.Input.mapOptionalInputValue<InstanceTier, String>(tier, (value) => value.wireValue),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShares: (() { final guardedValue = map['fileShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileShareConfig>(guardedValue, (value) => FileShareConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkConfig>(guardedValue, (value) => NetworkConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTier.fromValue(guardedValue as String)); })(),
    );
  }
}
