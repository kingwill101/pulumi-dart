// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_versions_version_related_tag.dart';

class GetVersionsVersion {
  /// Client specified annotations.
  final pulumi.Input<Map<String, String>> annotations;
  /// The time, as a RFC 3339 string, this package was created.
  final pulumi.Input<String> createTime;
  /// Description of the version, as specified in its metadata.
  final pulumi.Input<String> description;
  /// The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  final pulumi.Input<String> name;
  /// A list of related tags. Will contain up to 100 tags that reference this version.
  final pulumi.Input<List<GetVersionsVersionRelatedTag>> relatedTags;
  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetVersionsVersion].
  /// [annotations] Client specified annotations.
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [description] Description of the version, as specified in its metadata.
  /// [name] The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  /// [relatedTags] A list of related tags. Will contain up to 100 tags that reference this version.
  /// [updateTime] The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  const GetVersionsVersion({
    required this.annotations,
    required this.createTime,
    required this.description,
    required this.name,
    required this.relatedTags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'description': description,
      'name': name,
      'relatedTags': pulumi.Input.mapInputValue<List<GetVersionsVersionRelatedTag>, List<Map<String, dynamic>>>(relatedTags, (value) => pulumi.Input.encodeList<GetVersionsVersionRelatedTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': updateTime,
    };
  }

  factory GetVersionsVersion.fromMap(Map<String, dynamic> map) {
    return GetVersionsVersion(
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      relatedTags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVersionsVersionRelatedTag>(map['relatedTags']!, (value) => GetVersionsVersionRelatedTag.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

