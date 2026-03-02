// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_log_scope_log_scope_args_doc}
/// The set of arguments for LogScope.
/// {@endtemplate}
/// {@macro pulumi_logging_log_scope_log_scope_args_doc}
class LogScopeArgs {
  /// Describes this log scopes.
  final pulumi.Input<String>? description;
  /// The location of the resource. The only supported location is global so far.
  final pulumi.Input<String>? location;
  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  final pulumi.Input<String>? name;
  /// The parent of the resource.
  final pulumi.Input<String>? parent;
  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  final pulumi.Input<List<String>> resourceNames;

  /// Creates a new [LogScopeArgs].
  /// [description] Describes this log scopes.
  /// [location] The location of the resource. The only supported location is global so far.
  /// [name] The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  /// [parent] The parent of the resource.
  /// [resourceNames] Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  LogScopeArgs({
    this.description,
    this.location,
    this.name,
    this.parent,
    required this.resourceNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'resourceNames': resourceNames,
    };
  }

  factory LogScopeArgs.fromMap(Map<String, dynamic> map) {
    return LogScopeArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      resourceNames: ((map['resourceNames'] as List).cast<String>()).input(),
    );
  }
}

