// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_python_package_get_python_package_args_doc}
/// Arguments for getPythonPackage.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_python_package_get_python_package_args_doc}
class GetPythonPackageArgs {
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The name of the package to fetch. Can optionally include a specific version (e.g., `my_pkg:1.2.3`). If no version is provided, the latest version is used.
  final pulumi.Input<String> packageName;
  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final pulumi.Input<String>? project;
  /// The ID of the repository containing the Python package.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetPythonPackageArgs].
  /// [location] The location of the Artifact Registry repository.
  /// [packageName] The name of the package to fetch. Can optionally include a specific version (e.g., `my_pkg:1.2.3`). If no version is provided, the latest version is used.
  /// [project] The ID of the project that owns the repository. If not provided, the provider-level project is used.
  /// [repositoryId] The ID of the repository containing the Python package.
  GetPythonPackageArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> packageName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      packageName = pulumi.Input.asInput<String>(packageName),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetPythonPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPythonPackageArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      packageName: pulumi.Output.create<String>(map['packageName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

