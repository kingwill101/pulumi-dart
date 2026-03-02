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
    this.description,
    this.displayName,
    this.location,
    this.managed,
    this.priority,
    this.project,
    this.requestId,
    required this.sourceId,
    this.type,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managed: map['managed'] == null ? null : (map['managed'] as bool).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      type: map['type'] == null ? null : (SourceType.fromValue(map['type'] as String)).input(),
    );
  }
}

