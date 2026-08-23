// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_materialized_view_materialized_view_args_doc}
/// The set of arguments for MaterializedView.
/// {@endtemplate}
/// {@macro pulumi_bigtable_materialized_view_materialized_view_args_doc}
class MaterializedViewArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Set to true to make the MaterializedView protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// The name of the instance to create the materialized view within.
  final pulumi.Input<String>? instance;
  /// The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String> materializedViewId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The materialized view's select query.
  final pulumi.Input<String> query;

  /// Creates a new [MaterializedViewArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Set to true to make the MaterializedView protected against deletion.
  /// [instance] The name of the instance to create the materialized view within.
  /// [materializedViewId] The unique name of the materialized view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The materialized view's select query.
  const MaterializedViewArgs({
    this.deletionPolicy,
    this.deletionProtection,
    this.instance,
    required this.materializedViewId,
    this.project,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'instance': ?instance,
      'materializedViewId': materializedViewId,
      'project': ?project,
      'query': query,
    };
  }

  factory MaterializedViewArgs.fromMap(Map<String, dynamic> map) {
    return MaterializedViewArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      materializedViewId: pulumi.Input.fromValue(map['materializedViewId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
