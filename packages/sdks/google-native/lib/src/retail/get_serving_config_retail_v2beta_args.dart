// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2beta_get_serving_config_retail_v2beta_args_doc}
/// Arguments for getServingConfig.
/// {@endtemplate}
/// {@macro pulumi_retail_v2beta_get_serving_config_retail_v2beta_args_doc}
class GetServingConfigRetailV2betaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> servingConfigId;

  /// Creates a new [GetServingConfigRetailV2betaArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [servingConfigId] Required.
  const GetServingConfigRetailV2betaArgs({
    required this.catalogId,
    required this.location,
    this.project,
    required this.servingConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'location': location,
      'project': ?project,
      'servingConfigId': servingConfigId,
    };
  }

  factory GetServingConfigRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServingConfigRetailV2betaArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servingConfigId: pulumi.Input.fromValue(map['servingConfigId'] as String),
    );
  }
}
