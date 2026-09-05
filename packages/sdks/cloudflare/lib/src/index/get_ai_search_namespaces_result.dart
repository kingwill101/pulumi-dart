// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_namespaces_result_public_endpoint_params.dart';

class GetAiSearchNamespacesResult {
  final pulumi.Input<String> createdAt;
  /// Optional description for the namespace. Max 256 characters.
  final pulumi.Input<String> description;
  final pulumi.Input<String> name;
  final pulumi.Input<String> publicEndpointId;
  final pulumi.Input<GetAiSearchNamespacesResultPublicEndpointParams> publicEndpointParams;

  /// Creates a new [GetAiSearchNamespacesResult].
  /// [createdAt] Required.
  /// [description] Optional description for the namespace. Max 256 characters.
  /// [name] Required.
  /// [publicEndpointId] Required.
  /// [publicEndpointParams] Required.
  const GetAiSearchNamespacesResult({
    required this.createdAt,
    required this.description,
    required this.name,
    required this.publicEndpointId,
    required this.publicEndpointParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'name': name,
      'publicEndpointId': publicEndpointId,
      'publicEndpointParams': pulumi.Input.mapInputValue<GetAiSearchNamespacesResultPublicEndpointParams, Map<String, dynamic>>(publicEndpointParams, (value) => value.toMap()),
    };
  }

  factory GetAiSearchNamespacesResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicEndpointId: pulumi.Input.fromValue(map['publicEndpointId'] as String),
      publicEndpointParams: pulumi.Input.fromValue(GetAiSearchNamespacesResultPublicEndpointParams.fromMap((map['publicEndpointParams']! as Map).cast<String, dynamic>())),
    );
  }
}
