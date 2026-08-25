// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repositories_repository.dart';

/// Result data returned by getRepositories.
class GetRepositoriesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? nameFilter;
  final String? project;
  /// A list of all retrieved Artifact Registry repositories. Structure is defined below.
  final List<GetRepositoriesRepository>? repositories;

  /// Creates a new [GetRepositoriesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [nameFilter] Optional.
  /// [project] Optional.
  /// [repositories] A list of all retrieved Artifact Registry repositories. Structure is defined below.
  const GetRepositoriesResult({
    this.id,
    this.location,
    this.nameFilter,
    this.project,
    this.repositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'nameFilter': ?nameFilter,
      'project': ?project,
      'repositories': ?(() { final guardedValue = repositories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoriesRepository, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRepositoriesResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameFilter: (() { final guardedValue = map['nameFilter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoriesRepository>(guardedValue, (value) => GetRepositoriesRepository.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
