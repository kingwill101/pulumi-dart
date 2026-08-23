// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsTag {
  /// The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  final pulumi.Input<String> name;
  /// The version of the tag.
  final pulumi.Input<String> version;

  /// Creates a new [GetTagsTag].
  /// [name] The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  /// [version] The version of the tag.
  const GetTagsTag({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory GetTagsTag.fromMap(Map<String, dynamic> map) {
    return GetTagsTag(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
