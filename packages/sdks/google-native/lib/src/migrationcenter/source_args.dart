// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_type.dart';

/// {@template pulumi_migrationcenter_v1_source_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_source_args_doc}
class SourceArgs {
  /// Free-text description.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// If `true`, the source is managed by other service(s).
  final pulumi.Input<bool>? managed;
  /// The information confidence of the source. The higher the value, the higher the confidence.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  final pulumi.Input<String> sourceId;
  /// Data source type.
  final pulumi.Input<SourceType>? type;

  /// Creates a new [SourceArgs].
  /// [description] Free-text description.
  /// [displayName] User-friendly display name.
  /// [location] Optional.
  /// [managed] If `true`, the source is managed by other service(s).
  /// [priority] The information confidence of the source. The higher the value, the higher the confidence.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  /// [type] Data source type.
  SourceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? managed,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<String> sourceId,
    pulumi.Output<SourceType>? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      managed = pulumi.Input.asOptionalInput<bool>(managed),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceId = pulumi.Input.asInput<String>(sourceId),
      type = pulumi.Input.asOptionalInput<SourceType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'managed': ?managed,
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'type': ?pulumi.Input.mapOptionalInputValue<SourceType, String>(type, (value) => value.value),
    };
  }

  factory SourceArgs.fromMap(Map<String, dynamic> map) {
    return SourceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managed: map['managed'] == null ? null : pulumi.Output.create<bool>(map['managed'] as bool),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<SourceType>(SourceType.fromValue(map['type'] as String)),
    );
  }
}

