// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_specialist_pool_args_doc}
/// Arguments for getSpecialistPool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_specialist_pool_args_doc}
class GetSpecialistPoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specialistPoolId;

  /// Creates a new [GetSpecialistPoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [specialistPoolId] Required.
  GetSpecialistPoolArgs({
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

  factory GetSpecialistPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      specialistPoolId: pulumi.Input.fromValue(
        map['specialistPoolId'] as String,
      ),
    );
  }
}
