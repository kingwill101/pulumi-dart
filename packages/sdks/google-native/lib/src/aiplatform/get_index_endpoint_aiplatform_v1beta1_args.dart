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
  const GetIndexEndpointAiplatformV1beta1Args({
    required this.indexEndpointId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexEndpointId': indexEndpointId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIndexEndpointAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexEndpointAiplatformV1beta1Args(
      indexEndpointId: pulumi.Input.fromValue(map['indexEndpointId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

