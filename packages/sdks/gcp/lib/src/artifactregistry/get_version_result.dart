// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_related_tag.dart';

/// Result data returned by getVersion.
class GetVersionResult {
  /// Client specified annotations.
  final Map<String, String>? annotations;
  /// The time, as a RFC 3339 string, this package was created.
  final String? createTime;
  /// Description of the version, as specified in its metadata.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  final String? name;
  final String? packageName;
  final String? project;
  /// A list of related tags. Will contain up to 100 tags that reference this version.
  final List<GetVersionRelatedTag>? relatedTags;
  final String? repositoryId;
  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final String? updateTime;
  final String? versionName;
  final String? view;

  /// Creates a new [GetVersionResult].
  /// [annotations] Client specified annotations.
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [description] Description of the version, as specified in its metadata.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  /// [packageName] Optional.
  /// [project] Optional.
  /// [relatedTags] A list of related tags. Will contain up to 100 tags that reference this version.
  /// [repositoryId] Optional.
  /// [updateTime] The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  /// [versionName] Optional.
  /// [view] Optional.
  const GetVersionResult({
    this.annotations,
    this.createTime,
    this.description,
    this.id,
    this.location,
    this.name,
    this.packageName,
    this.project,
    this.relatedTags,
    this.repositoryId,
    this.updateTime,
    this.versionName,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'description': ?description,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'packageName': ?packageName,
      'project': ?project,
      'relatedTags': ?(() { final guardedValue = relatedTags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVersionRelatedTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'repositoryId': ?repositoryId,
      'updateTime': ?updateTime,
      'versionName': ?versionName,
      'view': ?view,
    };
  }

  factory GetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetVersionResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      relatedTags: (() { final guardedValue = map['relatedTags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVersionRelatedTag>(guardedValue, (value) => GetVersionRelatedTag.fromMap((value as Map).cast<String, dynamic>())); })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
