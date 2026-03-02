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

  factory GetTensorboardArgs.fromMap(Map<String, dynamic> map) {
    return GetTensorboardArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tensorboardId: (map['tensorboardId'] as String).input(),
    );
  }
}

