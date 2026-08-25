// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_tag.dart';

/// Result data returned by getTags.
class GetTagsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? packageName;
  final String? project;
  final String? repositoryId;
  /// A list of all retrieved Artifact Registry tags. Structure is defined below.
  final List<GetTagsTag>? tags;

  /// Creates a new [GetTagsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [packageName] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [tags] A list of all retrieved Artifact Registry tags. Structure is defined below.
  const GetTagsResult({
    this.filter,
    this.id,
    this.location,
    this.packageName,
    this.project,
    this.repositoryId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'location': ?location,
      'packageName': ?packageName,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'tags': ?(() { final guardedValue = tags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTagsTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTagsTag>(guardedValue, (value) => GetTagsTag.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
