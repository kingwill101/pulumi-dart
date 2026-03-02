// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPythonPackagesPythonPackage {
  /// The time, as a RFC 3339 string, this package was created.
  final pulumi.Input<String> createTime;
  /// The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/pythonPackages/{{pythonPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/pythonPackages/my-test-package:0.0.1`
  final pulumi.Input<String> name;
  /// Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  final pulumi.Input<String> packageName;
  /// The time, as a RFC 3339 string, this package was updated.
  final pulumi.Input<String> updateTime;
  /// Version of this package.
  final pulumi.Input<String> version;

  /// Creates a new [GetPythonPackagesPythonPackage].
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [name] The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/pythonPackages/{{pythonPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/pythonPackages/my-test-package:0.0.1`
  /// [packageName] Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  /// [updateTime] The time, as a RFC 3339 string, this package was updated.
  /// [version] Version of this package.
  GetPythonPackagesPythonPackage({
    required this.createTime,
    required this.name,
    required this.packageName,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
      'packageName': packageName,
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetPythonPackagesPythonPackage.fromMap(Map<String, dynamic> map) {
    return GetPythonPackagesPythonPackage(
      createTime: (map['createTime'] as String).input(),
      name: (map['name'] as String).input(),
      packageName: (map['packageName'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

