// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_tensorboard_aiplatform_v1beta1_args_doc}
/// Arguments for getTensorboard.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_tensorboard_aiplatform_v1beta1_args_doc}
class GetTensorboardAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetTensorboardAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tensorboardId] Required.
  const GetTensorboardAiplatformV1beta1Args({
    required this.location,
    this.project,
    required this.tensorboardId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tensorboardId': tensorboardId,
    };
  }

  factory GetTensorboardAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTensorboardAiplatformV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tensorboardId: pulumi.Input.fromValue(map['tensorboardId'] as String),
    );
  }
}

