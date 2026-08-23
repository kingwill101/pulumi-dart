// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_versions_goldengate_deployment_version.dart';

/// Result data returned by getGoldengateDeploymentVersions.
class GetGoldengateDeploymentVersionsResult {
  final List<GetGoldengateDeploymentVersionsGoldengateDeploymentVersion> goldengateDeploymentVersions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetGoldengateDeploymentVersionsResult].
  /// [goldengateDeploymentVersions] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  const GetGoldengateDeploymentVersionsResult({
    required this.goldengateDeploymentVersions,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentVersions': pulumi.Input.encodeList<GetGoldengateDeploymentVersionsGoldengateDeploymentVersion, Map<String, dynamic>>(goldengateDeploymentVersions, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentVersionsResult(
      goldengateDeploymentVersions: pulumi.Input.decodeList<GetGoldengateDeploymentVersionsGoldengateDeploymentVersion>(map['goldengateDeploymentVersions']!, (value) => GetGoldengateDeploymentVersionsGoldengateDeploymentVersion.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
