// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_filter.dart';
import 'get_projects_project.dart';
import 'get_projects_sort.dart';

/// Result data returned by getProjects.
class GetProjectsResult {
  final List<GetProjectsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A set of projects satisfying any `filter` and `sort` criteria. Each project has
  /// the following attributes:
  final List<GetProjectsProject> projects;
  final List<GetProjectsSort>? sorts;

  /// Creates a new [GetProjectsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [projects] A set of projects satisfying any `filter` and `sort` criteria. Each project has
  /// [sorts] Optional.
  const GetProjectsResult({
    this.filters,
    required this.id,
    required this.projects,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProjectsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'projects': pulumi.Input.encodeList<GetProjectsProject, Map<String, dynamic>>(projects, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProjectsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProjectsFilter>(guardedValue, (value) => GetProjectsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      projects: pulumi.Input.decodeList<GetProjectsProject>(map['projects']!, (value) => GetProjectsProject.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProjectsSort>(guardedValue, (value) => GetProjectsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

