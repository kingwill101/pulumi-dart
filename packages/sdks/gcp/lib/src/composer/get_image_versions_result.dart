// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_versions_image_version.dart';

/// Result data returned by getImageVersions.
class GetImageVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of composer image versions available in the given project and location. Each `image_version` contains:
  final List<GetImageVersionsImageVersion> imageVersions;
  final String project;
  final String region;

  /// Creates a new [GetImageVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageVersions] A list of composer image versions available in the given project and location. Each `image_version` contains:
  /// [project] Required.
  /// [region] Required.
  GetImageVersionsResult({
    required this.id,
    required this.imageVersions,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageVersions':
          pulumi.Input.encodeList<
            GetImageVersionsImageVersion,
            Map<String, dynamic>
          >(imageVersions, (value) => value.toMap()),
      'project': project,
      'region': region,
    };
  }

  factory GetImageVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsResult(
      id: map['id'] as String,
      imageVersions: pulumi.Input.decodeList<GetImageVersionsImageVersion>(
        map['imageVersions']!,
        (value) => GetImageVersionsImageVersion.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
