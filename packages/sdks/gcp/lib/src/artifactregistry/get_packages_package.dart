// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPackagesPackage {
  /// Client specified annotations.
  final pulumi.Input<Map<String, String>> annotations;
  /// The time, as a RFC 3339 string, this package was created.
  final pulumi.Input<String> createTime;
  /// The display name of the package.
  final pulumi.Input<String> displayName;
  /// The name of the package, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1`. If the package ID part contains slashes, the slashes are escaped.
  final pulumi.Input<String> name;
  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetPackagesPackage].
  /// [annotations] Client specified annotations.
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [displayName] The display name of the package.
  /// [name] The name of the package, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1`. If the package ID part contains slashes, the slashes are escaped.
  /// [updateTime] The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  const GetPackagesPackage({
    required this.annotations,
    required this.createTime,
    required this.displayName,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'displayName': displayName,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetPackagesPackage.fromMap(Map<String, dynamic> map) {
    return GetPackagesPackage(
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
