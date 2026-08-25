// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_npm_packages_npm_package.dart';

/// Result data returned by getNpmPackages.
class GetNpmPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// A list of all retrieved Artifact Registry Npm packages. Structure is defined below.
  final List<GetNpmPackagesNpmPackage>? npmPackages;
  final String? project;
  final String? repositoryId;

  /// Creates a new [GetNpmPackagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [npmPackages] A list of all retrieved Artifact Registry Npm packages. Structure is defined below.
  /// [project] Optional.
  /// [repositoryId] Optional.
  const GetNpmPackagesResult({
    this.id,
    this.location,
    this.npmPackages,
    this.project,
    this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'npmPackages': ?(() { final guardedValue = npmPackages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNpmPackagesNpmPackage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'repositoryId': ?repositoryId,
    };
  }

  factory GetNpmPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetNpmPackagesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      npmPackages: (() { final guardedValue = map['npmPackages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNpmPackagesNpmPackage>(guardedValue, (value) => GetNpmPackagesNpmPackage.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
