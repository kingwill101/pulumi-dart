// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVersionsVersionRelatedTag {
  /// The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  final pulumi.Input<String> name;
  final pulumi.Input<String> version;

  /// Creates a new [GetVersionsVersionRelatedTag].
  /// [name] The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  /// [version] Required.
  GetVersionsVersionRelatedTag({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory GetVersionsVersionRelatedTag.fromMap(Map<String, dynamic> map) {
    return GetVersionsVersionRelatedTag(
      name: (map['name'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

