// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2_get_model_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_get_model_args_doc}
class GetModelArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [modelId] Required.
  /// [project] Optional.
  GetModelArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> modelId,
    pulumi.Output<String>? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      location = pulumi.Input.asInput<String>(location),
      modelId = pulumi.Input.asInput<String>(modelId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'modelId': modelId,
      'project': ?project,
    };
  }

  factory GetModelArgs.fromMap(Map<String, dynamic> map) {
    return GetModelArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      modelId: pulumi.Output.create<String>(map['modelId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

