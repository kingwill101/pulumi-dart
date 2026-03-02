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
    this.description,
    this.environment,
    this.isDefault,
    this.name,
    this.purpose,
    this.resources,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose']! as String).input(),
      resources: map['resources'] == null ? null : ((map['resources']! as List).cast<String>()).input(),
    );
  }
}

