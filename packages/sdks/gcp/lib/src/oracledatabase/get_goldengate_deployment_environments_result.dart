// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_environments_goldengate_deployment_environment.dart';

/// Result data returned by getGoldengateDeploymentEnvironments.
class GetGoldengateDeploymentEnvironmentsResult {
  final List<GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment>? goldengateDeploymentEnvironments;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetGoldengateDeploymentEnvironmentsResult].
  /// [goldengateDeploymentEnvironments] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetGoldengateDeploymentEnvironmentsResult({
    this.goldengateDeploymentEnvironments,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentEnvironments': ?(() { final guardedValue = goldengateDeploymentEnvironments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentEnvironmentsResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentEnvironmentsResult(
      goldengateDeploymentEnvironments: (() { final guardedValue = map['goldengateDeploymentEnvironments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment>(guardedValue, (value) => GetGoldengateDeploymentEnvironmentsGoldengateDeploymentEnvironment.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
