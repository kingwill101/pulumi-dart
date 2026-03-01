// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetTCPProxy resources.
class TargetTCPProxyState {
  /// A reference to the BackendService resource.
  final pulumi.Input<String>? backendService;
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
  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<bool>? proxyBind;
  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;
  /// The unique identifier for the resource.
  final pulumi.Input<int>? proxyId;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [TargetTCPProxyState].
  /// [backendService] A reference to the BackendService resource.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to
  /// [proxyId] The unique identifier for the resource.
  /// [selfLink] The URI of the created resource.
  TargetTCPProxyState({
    pulumi.Output<String>? backendService,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? proxyBind,
    pulumi.Output<String>? proxyHeader,
    pulumi.Output<int>? proxyId,
    pulumi.Output<String>? selfLink,
  }) :
      backendService = pulumi.Input.asOptionalInput<String>(backendService),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyBind = pulumi.Input.asOptionalInput<bool>(proxyBind),
      proxyHeader = pulumi.Input.asOptionalInput<String>(proxyHeader),
      proxyId = pulumi.Input.asOptionalInput<int>(proxyId),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': ?backendService,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'proxyHeader': ?proxyHeader,
      'proxyId': ?proxyId,
      'selfLink': ?selfLink,
    };
  }

  factory TargetTCPProxyState.fromMap(Map<String, dynamic> map) {
    return TargetTCPProxyState(
      backendService: map['backendService'] == null ? null : pulumi.Output.create<String>(map['backendService'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      proxyBind: map['proxyBind'] == null ? null : pulumi.Output.create<bool>(map['proxyBind'] as bool),
      proxyHeader: map['proxyHeader'] == null ? null : pulumi.Output.create<String>(map['proxyHeader'] as String),
      proxyId: map['proxyId'] == null ? null : pulumi.Output.create<int>(map['proxyId'] as int),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

