// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_versions_version.dart';

/// Result data returned by getVersions.
class GetVersionsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? packageName;
  final String? project;
  final String? repositoryId;
  /// A list of all retrieved Artifact Registry versions. Structure is defined below.
  final List<GetVersionsVersion>? versions;
  final String? view;

  /// Creates a new [GetVersionsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [packageName] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [versions] A list of all retrieved Artifact Registry versions. Structure is defined below.
  /// [view] Optional.
  const GetVersionsResult({
    this.filter,
    this.id,
    this.location,
    this.packageName,
    this.project,
    this.repositoryId,
    this.versions,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'location': ?location,
      'packageName': ?packageName,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVersionsVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'view': ?view,
    };
  }

  factory GetVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetVersionsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVersionsVersion>(guardedValue, (value) => GetVersionsVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
