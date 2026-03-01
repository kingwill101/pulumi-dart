// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetGrpcProxy resources.
class TargetGrpcProxyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of this resource. A hash of the contents stored in
  /// this object. This field is used in optimistic locking. This field
  /// will be ignored when inserting a TargetGrpcProxy. An up-to-date
  /// fingerprint must be provided in order to patch/update the
  /// TargetGrpcProxy; otherwise, the request will fail with error
  /// 412 conditionNotMet. To see the latest fingerprint, make a get()
  /// request to retrieve the TargetGrpcProxy. A base64-encoded string.
  final pulumi.Input<String>? fingerprint;
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
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL with id for the resource.
  final pulumi.Input<String>? selfLinkWithId;
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

  /// Creates a new [TargetGrpcProxyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in
  /// [name] Name of the resource. Provided by the client when the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [selfLinkWithId] Server-defined URL with id for the resource.
  /// [urlMap] URL to the UrlMap resource that defines the mapping from URL to
  /// [validateForProxyless] If true, indicates that the BackendServices referenced by
  TargetGrpcProxyState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? selfLinkWithId,
    pulumi.Output<String>? urlMap,
    pulumi.Output<bool>? validateForProxyless,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      selfLinkWithId = pulumi.Input.asOptionalInput<String>(selfLinkWithId),
      urlMap = pulumi.Input.asOptionalInput<String>(urlMap),
      validateForProxyless = pulumi.Input.asOptionalInput<bool>(validateForProxyless);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'urlMap': ?urlMap,
      'validateForProxyless': ?validateForProxyless,
    };
  }

  factory TargetGrpcProxyState.fromMap(Map<String, dynamic> map) {
    return TargetGrpcProxyState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : pulumi.Output.create<String>(map['selfLinkWithId'] as String),
      urlMap: map['urlMap'] == null ? null : pulumi.Output.create<String>(map['urlMap'] as String),
      validateForProxyless: map['validateForProxyless'] == null ? null : pulumi.Output.create<bool>(map['validateForProxyless'] as bool),
    );
  }
}

