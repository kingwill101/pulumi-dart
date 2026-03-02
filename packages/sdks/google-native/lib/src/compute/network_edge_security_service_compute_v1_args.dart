// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_network_edge_security_service_compute_v1_args_doc}
/// The set of arguments for NetworkEdgeSecurityService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_network_edge_security_service_compute_v1_args_doc}
class NetworkEdgeSecurityServiceComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The resource URL for the network edge security service associated with this network edge security service.
  final pulumi.Input<String>? securityPolicy;

  /// Creates a new [NetworkEdgeSecurityServiceComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [securityPolicy] The resource URL for the network edge security service associated with this network edge security service.
  NetworkEdgeSecurityServiceComputeV1Args({
    this.description,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'securityPolicy': ?securityPolicy,
    };
  }

  factory NetworkEdgeSecurityServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NetworkEdgeSecurityServiceComputeV1Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      securityPolicy: map['securityPolicy'] == null ? null : (map['securityPolicy']! as String).input(),
    );
  }
}

