// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_specialist_pool_aiplatform_v1beta1_args_doc}
/// Arguments for getSpecialistPool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_specialist_pool_aiplatform_v1beta1_args_doc}
class GetSpecialistPoolAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specialistPoolId;

  /// Creates a new [GetSpecialistPoolAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [specialistPoolId] Required.
  const GetSpecialistPoolAiplatformV1beta1Args({
    required this.location,
    this.project,
    required this.specialistPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'specialistPoolId': specialistPoolId,
    };
  }

  factory GetSpecialistPoolAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolAiplatformV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specialistPoolId: pulumi.Input.fromValue(map['specialistPoolId'] as String),
    );
  }
}
