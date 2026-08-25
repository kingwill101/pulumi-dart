// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_project.dart';

/// Result data returned by getProject.
class GetProjectResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of projects matching the provided filter. Structure is defined below.
  final List<GetProjectProject>? projects;

  /// Creates a new [GetProjectResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [projects] A list of projects matching the provided filter. Structure is defined below.
  const GetProjectResult({
    this.filter,
    this.id,
    this.projects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'projects': ?(() { final guardedValue = projects; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProjectProject, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProjectProject>(guardedValue, (value) => GetProjectProject.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
