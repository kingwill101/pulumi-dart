// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_endpoint_aiplatform_v1beta1_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_endpoint_aiplatform_v1beta1_args_doc}
class GetEndpointAiplatformV1beta1Args {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointAiplatformV1beta1Args].
  /// [endpointId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetEndpointAiplatformV1beta1Args({
    required this.endpointId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEndpointAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEndpointAiplatformV1beta1Args(
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

