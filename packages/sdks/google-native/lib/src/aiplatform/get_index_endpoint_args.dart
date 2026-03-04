// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_index_endpoint_args_doc}
/// Arguments for getIndexEndpoint.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_index_endpoint_args_doc}
class GetIndexEndpointArgs {
  final pulumi.Input<String> indexEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexEndpointArgs].
  /// [indexEndpointId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetIndexEndpointArgs({
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

  factory GetIndexEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexEndpointArgs(
      indexEndpointId: pulumi.Input.fromValue(map['indexEndpointId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
