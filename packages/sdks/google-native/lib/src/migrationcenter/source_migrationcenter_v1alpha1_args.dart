// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_type_migrationcenter_v1alpha1.dart';

/// {@template pulumi_migrationcenter_v1alpha1_source_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_source_migrationcenter_v1alpha1_args_doc}
class SourceMigrationcenterV1alpha1Args {
  /// Free-text description.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String>? displayName;
  /// If `true`, the source is managed by other service(s).
  final pulumi.Input<bool>? isManaged;
  final pulumi.Input<String>? location;
  /// The information confidence of the source. The higher the value, the higher the confidence.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  final pulumi.Input<String> sourceId;
  /// Data source type.
  final pulumi.Input<SourceTypeMigrationcenterV1alpha1>? type;

  /// Creates a new [SourceMigrationcenterV1alpha1Args].
  /// [description] Free-text description.
  /// [displayName] User-friendly display name.
  /// [isManaged] If `true`, the source is managed by other service(s).
  /// [location] Optional.
  /// [priority] The information confidence of the source. The higher the value, the higher the confidence.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required. User specified ID for the source. It will become the last component of the source name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  /// [type] Data source type.
  SourceMigrationcenterV1alpha1Args({
    this.description,
    this.displayName,
    this.isManaged,
    this.location,
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
      'isManaged': ?isManaged,
      'location': ?location,
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
      'type': ?pulumi.Input.mapOptionalInputValue<SourceTypeMigrationcenterV1alpha1, String>(type, (value) => value.wireValue),
    };
  }

  factory SourceMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return SourceMigrationcenterV1alpha1Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isManaged: (() { final guardedValue = map['isManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceTypeMigrationcenterV1alpha1.fromValue(guardedValue as String)); })(),
    );
  }
}

