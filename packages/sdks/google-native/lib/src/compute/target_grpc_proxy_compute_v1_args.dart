// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_target_grpc_proxy_compute_v1_args_doc}
/// The set of arguments for TargetGrpcProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_target_grpc_proxy_compute_v1_args_doc}
class TargetGrpcProxyComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// URL to the UrlMap resource that defines the mapping from URL to the BackendService. The protocol field in the BackendService must be set to GRPC.
  final pulumi.Input<String>? urlMap;
  /// If true, indicates that the BackendServices referenced by the urlMap may be accessed by gRPC applications without using a sidecar proxy. This will enable configuration checks on urlMap and its referenced BackendServices to not allow unsupported features. A gRPC application must use "xds:///" scheme in the target URI of the service it is connecting to. If false, indicates that the BackendServices referenced by the urlMap will be accessed by gRPC applications via a sidecar proxy. In this case, a gRPC application must not use "xds:///" scheme in the target URI of the service it is connecting to
  final pulumi.Input<bool>? validateForProxyless;

  /// Creates a new [TargetGrpcProxyComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [urlMap] URL to the UrlMap resource that defines the mapping from URL to the BackendService. The protocol field in the BackendService must be set to GRPC.
  /// [validateForProxyless] If true, indicates that the BackendServices referenced by the urlMap may be accessed by gRPC applications without using a sidecar proxy. This will enable configuration checks on urlMap and its referenced BackendServices to not allow unsupported features. A gRPC application must use "xds:///" scheme in the target URI of the service it is connecting to. If false, indicates that the BackendServices referenced by the urlMap will be accessed by gRPC applications via a sidecar proxy. In this case, a gRPC application must not use "xds:///" scheme in the target URI of the service it is connecting to
  TargetGrpcProxyComputeV1Args({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? urlMap,
    pulumi.Output<bool>? validateForProxyless,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      urlMap = pulumi.Input.asOptionalInput<String>(urlMap),
      validateForProxyless = pulumi.Input.asOptionalInput<bool>(validateForProxyless);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'urlMap': ?urlMap,
      'validateForProxyless': ?validateForProxyless,
    };
  }

  factory TargetGrpcProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return TargetGrpcProxyComputeV1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      urlMap: map['urlMap'] == null ? null : pulumi.Output.create<String>(map['urlMap'] as String),
      validateForProxyless: map['validateForProxyless'] == null ? null : pulumi.Output.create<bool>(map['validateForProxyless'] as bool),
    );
  }
}

