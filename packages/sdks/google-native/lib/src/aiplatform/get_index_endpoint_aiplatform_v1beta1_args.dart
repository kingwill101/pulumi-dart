// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_index_endpoint_aiplatform_v1beta1_args_doc}
/// Arguments for getIndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_index_endpoint_aiplatform_v1beta1_args_doc}
class GetIndexEndpointAiplatformV1beta1Args {
  final pulumi.Input<String> indexEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexEndpointAiplatformV1beta1Args].
  /// [indexEndpointId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexEndpointAiplatformV1beta1Args({
    required pulumi.Output<String> indexEndpointId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      indexEndpointId = pulumi.Input.asInput<String>(indexEndpointId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexEndpointId': indexEndpointId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIndexEndpointAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexEndpointAiplatformV1beta1Args(
      indexEndpointId: pulumi.Output.create<String>(map['indexEndpointId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

