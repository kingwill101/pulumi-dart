// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_goldengate_deployment_types_goldengate_deployment_type.dart';

/// Result data returned by getGoldengateDeploymentTypes.
class GetGoldengateDeploymentTypesResult {
  final List<GetGoldengateDeploymentTypesGoldengateDeploymentType> goldengateDeploymentTypes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetGoldengateDeploymentTypesResult].
  /// [goldengateDeploymentTypes] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  const GetGoldengateDeploymentTypesResult({
    required this.goldengateDeploymentTypes,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentTypes': pulumi.Input.encodeList<GetGoldengateDeploymentTypesGoldengateDeploymentType, Map<String, dynamic>>(goldengateDeploymentTypes, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGoldengateDeploymentTypesResult.fromMap(Map<String, dynamic> map) {
    return GetGoldengateDeploymentTypesResult(
      goldengateDeploymentTypes: pulumi.Input.decodeList<GetGoldengateDeploymentTypesGoldengateDeploymentType>(map['goldengateDeploymentTypes']!, (value) => GetGoldengateDeploymentTypesGoldengateDeploymentType.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
