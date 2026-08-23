// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_source_source_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_source_source_args_doc}
class SourceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Free-text description.
  final pulumi.Input<String>? description;
  /// User-friendly display name.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// If `true`, the source is managed by other service(s).
  final pulumi.Input<bool>? managed;
  /// The information confidence of the source.
  /// The higher the value, the higher the confidence.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// User specified ID for the source. It will become the last component of the
  /// source name. The ID must be unique within the project, must conform with
  /// RFC-1034, is restricted to lower-cased letters, and has a maximum
  /// length of 63 characters. The ID must match the
  /// regular expression: `a-z?`.
  final pulumi.Input<String> sourceId;
  /// Data source type.
  /// Possible values:
  /// SOURCE_TYPE_UNKNOWN
  /// SOURCE_TYPE_UPLOAD
  /// SOURCE_TYPE_GUEST_OS_SCAN
  /// SOURCE_TYPE_INVENTORY_SCAN
  /// SOURCE_TYPE_CUSTOM
  /// SOURCE_TYPE_DISCOVERY_CLIENT
  final pulumi.Input<String>? type;

  /// Creates a new [SourceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [managed] If `true`, the source is managed by other service(s).
  /// [priority] The information confidence of the source.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceId] User specified ID for the source. It will become the last component of the
  /// [type] Data source type.
  const SourceArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.location,
    this.managed,
    this.priority,
    this.project,
    required this.sourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'managed': ?managed,
      'priority': ?priority,
      'project': ?project,
      'sourceId': sourceId,
      'type': ?type,
    };
  }

  factory SourceArgs.fromMap(Map<String, dynamic> map) {
    return SourceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      managed: (() { final guardedValue = map['managed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
