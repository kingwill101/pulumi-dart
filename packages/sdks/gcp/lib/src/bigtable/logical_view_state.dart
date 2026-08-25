// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogicalView resources.
class LogicalViewState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Set to true to make the logical view protected against deletion.
  final pulumi.Input<bool?>? deletionProtection;
  /// The name of the instance to create the logical view within.
  final pulumi.Input<String?>? instance;
  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String?>? logicalViewId;
  /// The unique name of the requested logical view. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/logicalViews/&lt;logicalViewId&gt;`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The logical view's select query.
  final pulumi.Input<String?>? query;

  /// Creates a new [LogicalViewState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Set to true to make the logical view protected against deletion.
  /// [instance] The name of the instance to create the logical view within.
  /// [logicalViewId] The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [name] The unique name of the requested logical view. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/logicalViews/&lt;logicalViewId&gt;`.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The logical view's select query.
  const LogicalViewState({
    this.deletionPolicy,
    this.deletionProtection,
    this.instance,
    this.logicalViewId,
    this.name,
    this.project,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'instance': ?instance,
      'logicalViewId': ?logicalViewId,
      'name': ?name,
      'project': ?project,
      'query': ?query,
    };
  }

  factory LogicalViewState.fromMap(Map<String, dynamic> map) {
    return LogicalViewState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalViewId: (() { final guardedValue = map['logicalViewId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
