// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_project_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_projects_get_project_get_project_args_doc}
class GetProjectArgs {
  /// A string filter as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list#query-parameters).
  final pulumi.Input<String> filter;

  /// Creates a new [GetProjectArgs].
  /// [filter] A string filter as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list#query-parameters).
  const GetProjectArgs({
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
