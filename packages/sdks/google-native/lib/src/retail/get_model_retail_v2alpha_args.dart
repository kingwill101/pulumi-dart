// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2alpha_get_model_retail_v2alpha_args_doc}
/// Arguments for getModel.
/// {@endtemplate}
/// {@macro pulumi_retail_v2alpha_get_model_retail_v2alpha_args_doc}
class GetModelRetailV2alphaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelRetailV2alphaArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [modelId] Required.
  /// [project] Optional.
  GetModelRetailV2alphaArgs({
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

  factory GetModelRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetModelRetailV2alphaArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      modelId: pulumi.Output.create<String>(map['modelId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

