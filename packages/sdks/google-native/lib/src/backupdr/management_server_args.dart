// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_type.dart';
import 'network_config.dart';

/// {@template pulumi_backupdr_v1_management_server_args_doc}
/// The set of arguments for ManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdr_v1_management_server_args_doc}
class ManagementServerArgs {
  /// Optional. The description of the ManagementServer instance (2048 characters or less).
  final pulumi.Input<String>? description;
  /// Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  final pulumi.Input<String>? etag;
  /// Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Required. The name of the management server to create. The name must be unique for the specified project and location.
  final pulumi.Input<String> managementServerId;
  /// VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  final pulumi.Input<List<NetworkConfig>> networks;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of the ManagementServer resource.
  final pulumi.Input<ManagementServerType> type;

  /// Creates a new [ManagementServerArgs].
  /// [description] Optional. The description of the ManagementServer instance (2048 characters or less).
  /// [etag] Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  /// [labels] Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  /// [location] Optional.
  /// [managementServerId] Required. The name of the management server to create. The name must be unique for the specified project and location.
  /// [networks] VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of the ManagementServer resource.
  const ManagementServerArgs({
    this.description,
    this.etag,
    this.labels,
    this.location,
    required this.managementServerId,
    required this.networks,
    this.project,
    this.requestId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'managementServerId': managementServerId,
      'networks': pulumi.Input.mapInputValue<List<NetworkConfig>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<NetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<ManagementServerType, String>(type, (value) => value.wireValue),
    };
  }

  factory ManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return ManagementServerArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementServerId: pulumi.Input.fromValue(map['managementServerId'] as String),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkConfig>(map['networks']!, (value) => NetworkConfig.fromMap((value as Map).cast<String, dynamic>()))),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(ManagementServerType.fromValue(map['type']! as String)),
    );
  }
}
