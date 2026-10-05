// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_config_response.dart';
import 'network_config_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// The time when the instance was created.
  final String? createTime;
  /// The description of the instance (2048 characters or less).
  final String? description;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final String? etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  final List<FileShareConfigResponse>? fileShares;
  /// KMS key name used for data encryption.
  final String? kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final Map<String, String>? labels;
  /// The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  final String? name;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final List<NetworkConfigResponse>? networks;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// The instance state.
  final String? state;
  /// Additional information about the instance state, if available.
  final String? statusMessage;
  /// Field indicates all the reasons the instance is in "SUSPENDED" state.
  final List<String>? suspensionReasons;
  /// The service tier of the instance.
  final String? tier;

  /// Creates a new [GetInstanceResult].
  /// [createTime] The time when the instance was created.
  /// [description] The description of the instance (2048 characters or less).
  /// [etag] Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  /// [fileShares] File system shares on the instance. For this version, only a single file share is supported.
  /// [kmsKeyName] KMS key name used for data encryption.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  /// [networks] VPC networks to which the instance is connected. For this version, only a single network is supported.
  /// [satisfiesPzs] Reserved for future use.
  /// [state] The instance state.
  /// [statusMessage] Additional information about the instance state, if available.
  /// [suspensionReasons] Field indicates all the reasons the instance is in "SUSPENDED" state.
  /// [tier] The service tier of the instance.
  const GetInstanceResult({
    this.createTime,
    this.description,
    this.etag,
    this.fileShares,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.networks,
    this.satisfiesPzs,
    this.state,
    this.statusMessage,
    this.suspensionReasons,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'fileShares': ?(() { final guardedValue = fileShares; if (guardedValue == null) return null; return pulumi.Input.encodeList<FileShareConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'name': ?name,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'satisfiesPzs': ?satisfiesPzs,
      'state': ?state,
      'statusMessage': ?statusMessage,
      'suspensionReasons': ?suspensionReasons,
      'tier': ?tier,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileShares: (() { final guardedValue = map['fileShares']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FileShareConfigResponse>(guardedValue, (value) => FileShareConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkConfigResponse>(guardedValue, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suspensionReasons: (() { final guardedValue = map['suspensionReasons']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
