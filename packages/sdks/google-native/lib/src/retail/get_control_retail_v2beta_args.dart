// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_retail_v2beta_get_control_retail_v2beta_args_doc}
/// Arguments for getControl.
/// {@endtemplate}
/// {@macro pulumi_retail_v2beta_get_control_retail_v2beta_args_doc}
class GetControlRetailV2betaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> controlId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetControlRetailV2betaArgs].
  /// [catalogId] Required.
  /// [controlId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetControlRetailV2betaArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> controlId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      controlId = pulumi.Input.asInput<String>(controlId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'controlId': controlId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetControlRetailV2betaArgs.fromMap(Map<String, dynamic> map) {
    return GetControlRetailV2betaArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      controlId: pulumi.Output.create<String>(map['controlId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

