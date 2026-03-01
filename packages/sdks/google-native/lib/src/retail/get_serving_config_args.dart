// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2_get_serving_config_args_doc}
/// Arguments for getServingConfig.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_get_serving_config_args_doc}
class GetServingConfigArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> servingConfigId;

  /// Creates a new [GetServingConfigArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [servingConfigId] Required.
  GetServingConfigArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> servingConfigId,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      servingConfigId = pulumi.Input.asInput<String>(servingConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'project': ?project,
      'servingConfigId': servingConfigId,
    };
  }

  factory GetServingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServingConfigArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      servingConfigId: pulumi.Output.create<String>(map['servingConfigId'] as String),
    );
  }
}

