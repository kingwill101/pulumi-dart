// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_index_project_project_args_doc}
class ProjectArgs {
  /// the description of the project
  final pulumi.Input<String>? description;
  /// the environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`)
  final pulumi.Input<String>? environment;
  /// a boolean indicating whether or not the project is the default project. (Default: "false")
  final pulumi.Input<bool>? isDefault;
  /// The name of the Project
  final pulumi.Input<String>? name;
  /// the purpose of the project, (Default: "Web Application")
  final pulumi.Input<String>? purpose;
  /// a list of uniform resource names (URNs) for the resources associated with the project
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [ProjectArgs].
  /// [description] the description of the project
  /// [environment] the environment of the project's resources. The possible values are: `Development`, `Staging`, `Production`)
  /// [isDefault] a boolean indicating whether or not the project is the default project. (Default: "false")
  /// [name] The name of the Project
  /// [purpose] the purpose of the project, (Default: "Web Application")
  /// [resources] a list of uniform resource names (URNs) for the resources associated with the project
  ProjectArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? environment,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? purpose,
    pulumi.Output<List<String>>? resources,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environment': ?environment,
      'isDefault': ?isDefault,
      'name': ?name,
      'purpose': ?purpose,
      'resources': ?resources,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
    );
  }
}

