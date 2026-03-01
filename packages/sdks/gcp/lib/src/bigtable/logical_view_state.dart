// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogicalView resources.
class LogicalViewState {
  /// Set to true to make the logical view protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// The name of the instance to create the logical view within.
  final pulumi.Input<String>? instance;
  /// The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  final pulumi.Input<String>? logicalViewId;
  /// The unique name of the requested logical view. Values are of the form `projects/<project>/instances/<instance>/logicalViews/<logicalViewId>`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The logical view's select query.
  final pulumi.Input<String>? query;

  /// Creates a new [LogicalViewState].
  /// [deletionProtection] Set to true to make the logical view protected against deletion.
  /// [instance] The name of the instance to create the logical view within.
  /// [logicalViewId] The unique name of the logical view in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  /// [name] The unique name of the requested logical view. Values are of the form `projects/<project>/instances/<instance>/logicalViews/<logicalViewId>`.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] The logical view's select query.
  LogicalViewState({
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? logicalViewId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? query,
  }) :
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      logicalViewId = pulumi.Input.asOptionalInput<String>(logicalViewId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      query = pulumi.Input.asOptionalInput<String>(query);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      logicalViewId: map['logicalViewId'] == null ? null : pulumi.Output.create<String>(map['logicalViewId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      query: map['query'] == null ? null : pulumi.Output.create<String>(map['query'] as String),
    );
  }
}

