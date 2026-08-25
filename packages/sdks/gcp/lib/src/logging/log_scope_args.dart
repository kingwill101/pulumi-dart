// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_log_scope_log_scope_args_doc}
/// The set of arguments for LogScope.
/// {@endtemplate}
/// {@macro pulumi_logging_log_scope_log_scope_args_doc}
class LogScopeArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Describes this log scopes.
  final pulumi.Input<String?>? description;
  /// The location of the resource. The only supported location is global so far.
  final pulumi.Input<String?>? location;
  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  final pulumi.Input<String?>? name;
  /// The parent of the resource.
  final pulumi.Input<String?>? parent;
  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  final pulumi.Input<List<String>> resourceNames;

  /// Creates a new [LogScopeArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Describes this log scopes.
  /// [location] The location of the resource. The only supported location is global so far.
  /// [name] The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  /// [parent] The parent of the resource.
  /// [resourceNames] Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  const LogScopeArgs({
    this.deletionPolicy,
    this.description,
    this.location,
    this.name,
    this.parent,
    required this.resourceNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'resourceNames': resourceNames,
    };
  }

  factory LogScopeArgs.fromMap(Map<String, dynamic> map) {
    return LogScopeArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceNames: pulumi.Input.fromValue((map['resourceNames'] as List).cast<String>()),
    );
  }
}
