// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_versions_image_version.dart';

/// Result data returned by getImageVersions.
class GetImageVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of composer image versions available in the given project and location. Each `imageVersion` contains:
  final List<GetImageVersionsImageVersion>? imageVersions;
  final String? project;
  final String? region;

  /// Creates a new [GetImageVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageVersions] A list of composer image versions available in the given project and location. Each `imageVersion` contains:
  /// [project] Optional.
  /// [region] Optional.
  const GetImageVersionsResult({
    this.id,
    this.imageVersions,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'imageVersions': ?(() { final guardedValue = imageVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageVersionsImageVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetImageVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageVersions: (() { final guardedValue = map['imageVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageVersionsImageVersion>(guardedValue, (value) => GetImageVersionsImageVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
