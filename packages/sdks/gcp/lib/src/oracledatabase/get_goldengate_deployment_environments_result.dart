// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_environments_goldengate_deployment_environment.dart';

/// Result data returned by getGoldengateDeploymentEnvironments.
class GetGoldengateDeploymentEnvironmentsResult {
  final List<GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment> goldengateDeploymentEnvironments;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetGoldengateDeploymentEnvironmentsResult].
  /// [goldengateDeploymentEnvironments] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  const GetGoldengateDeploymentEnvironmentsResult({
    required this.goldengateDeploymentEnvironments,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentEnvironments': pulumi.Input.encodeList<GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment, Map<String, dynamic>>(goldengateDeploymentEnvironments, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentEnvironmentsResult(
      goldengateDeploymentEnvironments: pulumi.Input.decodeList<GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment>(map['goldengateDeploymentEnvironments']!, (value) => GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
