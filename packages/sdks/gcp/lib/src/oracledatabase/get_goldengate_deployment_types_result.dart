// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_types_goldengate_deployment_type.dart';

/// Result data returned by getGoldengateDeploymentTypes.
class GetGoldengateDeploymentTypesResult {
  final List<GetGoldengateDeploymentTypesGoldengateDeploymentType>? goldengateDeploymentTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetGoldengateDeploymentTypesResult].
  /// [goldengateDeploymentTypes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetGoldengateDeploymentTypesResult({
    this.goldengateDeploymentTypes,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentTypes': ?(() { final guardedValue = goldengateDeploymentTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGoldengateDeploymentTypesGoldengateDeploymentType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentTypesResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentTypesResult(
      goldengateDeploymentTypes: (() { final guardedValue = map['goldengateDeploymentTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGoldengateDeploymentTypesGoldengateDeploymentType>(guardedValue, (value) => GetGoldengateDeploymentTypesGoldengateDeploymentType.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
