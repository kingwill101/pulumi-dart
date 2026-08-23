// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_dependency.dart';

class EgressEndpoint {
  /// The descriptive category name of endpoints accessible by the AKS agent node. For example, azure-resource-management, API server, etc. The platform egress endpoints provided by default will use the category 'default'.
  final pulumi.Input<String> category;
  /// The list of endpoint dependencies.
  final pulumi.Input<List<EndpointDependency>> endpoints;

  /// Creates a new [EgressEndpoint].
  /// [category] The descriptive category name of endpoints accessible by the AKS agent node. For example, azure-resource-management, API server, etc. The platform egress endpoints provided by default will use the category 'default'.
  /// [endpoints] The list of endpoint dependencies.
  const EgressEndpoint({
    required this.category,
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'endpoints': pulumi.Input.mapInputValue<List<EndpointDependency>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<EndpointDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EgressEndpoint.fromMap(Map<String, dynamic> map) {
    return EgressEndpoint(
      category: pulumi.Input.fromValue(map['category'] as String),
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointDependency>(map['endpoints']!, (value) => EndpointDependency.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
