// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetSSLProxy resources.
class TargetSSLProxyState {
  /// A reference to the BackendService resource.
  final pulumi.Input<String>? backendService;
  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field can only be set for global target proxies.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  final pulumi.Input<String>? certificateMap;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;
  /// The unique identifier for the resource.
  final pulumi.Input<int>? proxyId;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// A list of SslCertificate resources that are used to authenticate
  /// connections between users and the load balancer. At least one
  /// SSL certificate must be specified.
  final pulumi.Input<List<String>>? sslCertificates;
  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetSslProxy resource. If not set, the TargetSslProxy
  /// resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [TargetSSLProxyState].
  /// [backendService] A reference to the BackendService resource.
  /// [certificateMap] A reference to the CertificateMap resource uri that identifies a certificate map
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to
  /// [proxyId] The unique identifier for the resource.
  /// [selfLink] The URI of the created resource.
  /// [sslCertificates] A list of SslCertificate resources that are used to authenticate
  /// [sslPolicy] A reference to the SslPolicy resource that will be associated with
  TargetSSLProxyState({
    pulumi.Output<String>? backendService,
    pulumi.Output<String>? certificateMap,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? proxyHeader,
    pulumi.Output<int>? proxyId,
    pulumi.Output<String>? selfLink,
    pulumi.Output<List<String>>? sslCertificates,
    pulumi.Output<String>? sslPolicy,
  }) :
      backendService = pulumi.Input.asOptionalInput<String>(backendService),
      certificateMap = pulumi.Input.asOptionalInput<String>(certificateMap),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyHeader = pulumi.Input.asOptionalInput<String>(proxyHeader),
      proxyId = pulumi.Input.asOptionalInput<int>(proxyId),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sslCertificates = pulumi.Input.asOptionalInput<List<String>>(sslCertificates),
      sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': ?backendService,
      'certificateMap': ?certificateMap,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'proxyHeader': ?proxyHeader,
      'proxyId': ?proxyId,
      'selfLink': ?selfLink,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory TargetSSLProxyState.fromMap(Map<String, dynamic> map) {
    return TargetSSLProxyState(
      backendService: map['backendService'] == null ? null : pulumi.Output.create<String>(map['backendService'] as String),
      certificateMap: map['certificateMap'] == null ? null : pulumi.Output.create<String>(map['certificateMap'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyHeader: map['proxyHeader'] == null ? null : pulumi.Output.create<String>(map['proxyHeader'] as String),
      proxyId: map['proxyId'] == null ? null : pulumi.Output.create<int>(map['proxyId'] as int),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sslCertificates: map['sslCertificates'] == null ? null : pulumi.Output.create<List<String>>((map['sslCertificates'] as List).cast<String>()),
      sslPolicy: map['sslPolicy'] == null ? null : pulumi.Output.create<String>(map['sslPolicy'] as String),
    );
  }
}

