// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_tensorboard_args_doc}
/// Arguments for getTensorboard.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_tensorboard_args_doc}
class GetTensorboardArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tensorboardId;

  /// Creates a new [GetTensorboardArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tensorboardId] Required.
  GetTensorboardArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tensorboardId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tensorboardId = pulumi.Input.asInput<String>(tensorboardId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tensorboardId': tensorboardId,
    };
  }

  factory GetTensorboardArgs.fromMap(Map<String, dynamic> map) {
    return GetTensorboardArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tensorboardId: pulumi.Output.create<String>(map['tensorboardId'] as String),
    );
  }
}

