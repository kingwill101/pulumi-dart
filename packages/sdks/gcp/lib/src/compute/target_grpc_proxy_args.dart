// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_grpc_proxy_target_grpc_proxy_args_doc}
/// The set of arguments for TargetGrpcProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_target_grpc_proxy_target_grpc_proxy_args_doc}
class TargetGrpcProxyArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource
  /// is created. The name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long
  /// and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL to the UrlMap resource that defines the mapping from URL to
  /// the BackendService. The protocol field in the BackendService
  /// must be set to GRPC.
  final pulumi.Input<String>? urlMap;
  /// If true, indicates that the BackendServices referenced by
  /// the urlMap may be accessed by gRPC applications without using
  /// a sidecar proxy. This will enable configuration checks on urlMap
  /// and its referenced BackendServices to not allow unsupported features.
  /// A gRPC application must use "xds:///" scheme in the target URI
  /// of the service it is connecting to. If false, indicates that the
  /// BackendServices referenced by the urlMap will be accessed by gRPC
  /// applications via a sidecar proxy. In this case, a gRPC application
  /// must not use "xds:///" scheme in the target URI of the service
  /// it is connecting to
  final pulumi.Input<bool>? validateForProxyless;

  /// Creates a new [TargetGrpcProxyArgs].
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [urlMap] URL to the UrlMap resource that defines the mapping from URL to
  /// [validateForProxyless] If true, indicates that the BackendServices referenced by
  TargetGrpcProxyArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? urlMap,
    pulumi.Output<bool>? validateForProxyless,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      urlMap = pulumi.Input.asOptionalInput<String>(urlMap),
      validateForProxyless = pulumi.Input.asOptionalInput<bool>(validateForProxyless);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'urlMap': ?urlMap,
      'validateForProxyless': ?validateForProxyless,
    };
  }

  factory TargetGrpcProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetGrpcProxyArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      urlMap: map['urlMap'] == null ? null : pulumi.Output.create<String>(map['urlMap'] as String),
      validateForProxyless: map['validateForProxyless'] == null ? null : pulumi.Output.create<bool>(map['validateForProxyless'] as bool),
    );
  }
}

