// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_packages_package.dart';

/// Result data returned by getPackages.
class GetPackagesResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// A list of all retrieved Artifact Registry packages. Structure is defined below.
  final List<GetPackagesPackage>? packages;
  final String? project;
  final String? repositoryId;

  /// Creates a new [GetPackagesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [packages] A list of all retrieved Artifact Registry packages. Structure is defined below.
  /// [project] Optional.
  /// [repositoryId] Optional.
  const GetPackagesResult({
    this.filter,
    this.id,
    this.location,
    this.packages,
    this.project,
    this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'location': ?location,
      'packages': ?(() { final guardedValue = packages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPackagesPackage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'repositoryId': ?repositoryId,
    };
  }

  factory GetPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetPackagesResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packages: (() { final guardedValue = map['packages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPackagesPackage>(guardedValue, (value) => GetPackagesPackage.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
