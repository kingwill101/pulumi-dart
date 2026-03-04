// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNpmPackagesNpmPackage {
  /// The time, as a RFC 3339 string, this package was created.
  final pulumi.Input<String> createTime;

  /// The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/npmPackages/{{npmPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/npmPackages/my-test-package:0.0.1`
  final pulumi.Input<String> name;

  /// Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  final pulumi.Input<String> packageName;

  /// The tags associated with the Npm package.
  final pulumi.Input<List<String>> tags;

  /// The time, as a RFC 3339 string, this package was updated.
  final pulumi.Input<String> updateTime;

  /// Version of this package.
  final pulumi.Input<String> version;

  /// Creates a new [GetNpmPackagesNpmPackage].
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [name] The fully qualified name of the fetched package.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/npmPackages/{{npmPackage}}`. For example, `projects/example-project/locations/us-central1/repository/example-repo/npmPackages/my-test-package:0.0.1`
  /// [packageName] Extracted short name of the package (last part of `name`, without version). For example, from `.../my-test-package:0.0.1` → `my-test-package`.
  /// [tags] The tags associated with the Npm package.
  /// [updateTime] The time, as a RFC 3339 string, this package was updated.
  /// [version] Version of this package.
  GetNpmPackagesNpmPackage({
    required this.createTime,
    required this.name,
    required this.packageName,
    required this.tags,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'name': name,
      'packageName': packageName,
      'tags': tags,
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetNpmPackagesNpmPackage.fromMap(Map<String, dynamic> map) {
    return GetNpmPackagesNpmPackage(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
