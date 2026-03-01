// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_dependency_response.dart';

class EgressEndpointResponse {
  /// The descriptive category name of endpoints accessible by the AKS agent node. For example, azure-resource-management, API server, etc. The platform egress endpoints provided by default will use the category 'default'.
  final String category;
  /// The list of endpoint dependencies.
  final List<EndpointDependencyResponse> endpoints;

  /// Creates a new [EgressEndpointResponse].
  /// [category] The descriptive category name of endpoints accessible by the AKS agent node. For example, azure-resource-management, API server, etc. The platform egress endpoints provided by default will use the category 'default'.
  /// [endpoints] The list of endpoint dependencies.
  EgressEndpointResponse({
    required this.category,
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'endpoints': pulumi.Input.encodeList<EndpointDependencyResponse, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
    };
  }

  factory EgressEndpointResponse.fromMap(Map<String, dynamic> map) {
    return EgressEndpointResponse(
      category: map['category'] as String,
      endpoints: pulumi.Input.decodeList<EndpointDependencyResponse>(map['endpoints'], (value) => EndpointDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

