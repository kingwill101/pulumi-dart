// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptPackageDependency {
  /// The exact version that was resolved and installed by the package manager.
  final pulumi.Input<String> installedVersion;
  /// The npm package name.
  final pulumi.Input<String> name;
  /// The version constraint as written in package.json.
  final pulumi.Input<String> packageJsonVersion;

  /// Creates a new [WorkersScriptPackageDependency].
  /// [installedVersion] The exact version that was resolved and installed by the package manager.
  /// [name] The npm package name.
  /// [packageJsonVersion] The version constraint as written in package.json.
  const WorkersScriptPackageDependency({
    required this.installedVersion,
    required this.name,
    required this.packageJsonVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installedVersion': installedVersion,
      'name': name,
      'packageJsonVersion': packageJsonVersion,
    };
  }

  factory WorkersScriptPackageDependency.fromMap(Map<String, dynamic> map) {
    return WorkersScriptPackageDependency(
      installedVersion: pulumi.Input.fromValue(map['installedVersion'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageJsonVersion: pulumi.Input.fromValue(map['packageJsonVersion'] as String),
    );
  }
}
