// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_python_packages_python_package.dart';

/// Result data returned by getPythonPackages.
class GetPythonPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  /// A list of all retrieved Artifact Registry Python packages. Structure is defined below.
  final List<GetPythonPackagesPythonPackage>? pythonPackages;
  final String? repositoryId;

  /// Creates a new [GetPythonPackagesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [pythonPackages] A list of all retrieved Artifact Registry Python packages. Structure is defined below.
  /// [repositoryId] Optional.
  const GetPythonPackagesResult({
    this.id,
    this.location,
    this.project,
    this.pythonPackages,
    this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'pythonPackages': ?(() { final guardedValue = pythonPackages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPythonPackagesPythonPackage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'repositoryId': ?repositoryId,
    };
  }

  factory GetPythonPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetPythonPackagesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pythonPackages: (() { final guardedValue = map['pythonPackages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPythonPackagesPythonPackage>(guardedValue, (value) => GetPythonPackagesPythonPackage.fromMap((value as Map).cast<String, dynamic>())); })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
