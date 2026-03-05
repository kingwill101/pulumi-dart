// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_config_response.dart';
import 'network_config_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// The time when the instance was created.
  final String createTime;
  /// The description of the instance (2048 characters or less).
  final String description;
  /// Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  final String etag;
  /// File system shares on the instance. For this version, only a single file share is supported.
  final List<FileShareConfigResponse> fileShares;
  /// KMS key name used for data encryption.
  final String kmsKeyName;
  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  final String name;
  /// VPC networks to which the instance is connected. For this version, only a single network is supported.
  final List<NetworkConfigResponse> networks;
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
  GetInstanceResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.fileShares,
    required this.kmsKeyName,
    required this.labels,
    required this.name,
    required this.networks,
    required this.satisfiesPzs,
    required this.state,
    required this.statusMessage,
    required this.suspensionReasons,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'fileShares': pulumi.Input.encodeList<FileShareConfigResponse, Map<String, dynamic>>(fileShares, (value) => value.toMap()),
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'name': name,
      'networks': pulumi.Input.encodeList<NetworkConfigResponse, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'satisfiesPzs': satisfiesPzs,
      'state': state,
      'statusMessage': statusMessage,
      'suspensionReasons': suspensionReasons,
      'tier': tier,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      fileShares: pulumi.Input.decodeList<FileShareConfigResponse>(map['fileShares']!, (value) => FileShareConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<NetworkConfigResponse>(map['networks']!, (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      satisfiesPzs: map['satisfiesPzs'] as bool,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      suspensionReasons: (map['suspensionReasons'] as List).cast<String>(),
      tier: map['tier'] as String,
    );
  }
}

