// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_versions_goldengate_deployment_version.dart';

/// Result data returned by getGoldengateDeploymentVersions.
class GetGoldengateDeploymentVersionsResult {
  final List<GetGoldengateDeploymentVersionsGoldengateDeploymentVersion>? goldengateDeploymentVersions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetGoldengateDeploymentVersionsResult].
  /// [goldengateDeploymentVersions] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetGoldengateDeploymentVersionsResult({
    this.goldengateDeploymentVersions,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentVersions': ?(() { final guardedValue = goldengateDeploymentVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGoldengateDeploymentVersionsGoldengateDeploymentVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentVersionsResult(
      goldengateDeploymentVersions: (() { final guardedValue = map['goldengateDeploymentVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGoldengateDeploymentVersionsGoldengateDeploymentVersion>(guardedValue, (value) => GetGoldengateDeploymentVersionsGoldengateDeploymentVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
