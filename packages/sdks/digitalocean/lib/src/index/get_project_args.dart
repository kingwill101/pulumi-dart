// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_project_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_index_get_project_get_project_args_doc}
class GetProjectArgs {
  /// the ID of the project to retrieve
  final pulumi.Input<String>? id;
  /// the name of the project to retrieve. The data source will raise an error if more than
  /// one project has the provided name or if no project has that name.
  final pulumi.Input<String>? name;

  /// Creates a new [GetProjectArgs].
  /// [id] the ID of the project to retrieve
  /// [name] the name of the project to retrieve. The data source will raise an error if more than
  GetProjectArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

