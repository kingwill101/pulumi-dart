// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_project.dart';

/// Result data returned by getProject.
class GetProjectResult {
  final String filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of projects matching the provided filter. Structure is defined below.
  final List<GetProjectProject> projects;

  /// Creates a new [GetProjectResult].
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [projects] A list of projects matching the provided filter. Structure is defined below.
  const GetProjectResult({
    required this.filter,
    required this.id,
    required this.projects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'id': id,
      'projects': pulumi.Input.encodeList<GetProjectProject, Map<String, dynamic>>(projects, (value) => value.toMap()),
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      filter: map['filter'] as String,
      id: map['id'] as String,
      projects: pulumi.Input.decodeList<GetProjectProject>(map['projects']!, (value) => GetProjectProject.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
