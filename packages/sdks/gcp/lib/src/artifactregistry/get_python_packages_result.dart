// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_python_packages_python_package.dart';

/// Result data returned by getPythonPackages.
class GetPythonPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;
  /// A list of all retrieved Artifact Registry Python packages. Structure is defined below.
  final List<GetPythonPackagesPythonPackage> pythonPackages;
  final String repositoryId;

  /// Creates a new [GetPythonPackagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  /// [pythonPackages] A list of all retrieved Artifact Registry Python packages. Structure is defined below.
  /// [repositoryId] Required.
  GetPythonPackagesResult({
    required this.id,
    required this.location,
    this.project,
    required this.pythonPackages,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'project': ?project,
      'pythonPackages': pulumi.Input.encodeList<GetPythonPackagesPythonPackage, Map<String, dynamic>>(pythonPackages, (value) => value.toMap()),
      'repositoryId': repositoryId,
    };
  }

  factory GetPythonPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetPythonPackagesResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project']! as String,
      pythonPackages: pulumi.Input.decodeList<GetPythonPackagesPythonPackage>(map['pythonPackages'], (value) => GetPythonPackagesPythonPackage.fromMap((value as Map).cast<String, dynamic>())),
      repositoryId: map['repositoryId'] as String,
    );
  }
}

