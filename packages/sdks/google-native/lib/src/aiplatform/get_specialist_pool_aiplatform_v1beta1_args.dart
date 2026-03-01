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
  GetSpecialistPoolAiplatformV1beta1Args({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> specialistPoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      specialistPoolId = pulumi.Input.asInput<String>(specialistPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'specialistPoolId': specialistPoolId,
    };
  }

  factory GetSpecialistPoolAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolAiplatformV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      specialistPoolId: pulumi.Output.create<String>(map['specialistPoolId'] as String),
    );
  }
}

