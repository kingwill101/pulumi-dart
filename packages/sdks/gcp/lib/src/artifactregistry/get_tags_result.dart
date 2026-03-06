// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_tag.dart';

/// Result data returned by getTags.
class GetTagsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String packageName;
  final String? project;
  final String repositoryId;
  /// A list of all retrieved Artifact Registry tags. Structure is defined below.
  final List<GetTagsTag> tags;

  /// Creates a new [GetTagsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [packageName] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tags] A list of all retrieved Artifact Registry tags. Structure is defined below.
  const GetTagsResult({
    this.filter,
    required this.id,
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
      'tags': pulumi.Input.encodeList<GetTagsTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetTagsResult.fromMap(Map<String, dynamic> map) {
    return GetTagsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      packageName: map['packageName'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: map['repositoryId'] as String,
      tags: pulumi.Input.decodeList<GetTagsTag>(map['tags']!, (value) => GetTagsTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

