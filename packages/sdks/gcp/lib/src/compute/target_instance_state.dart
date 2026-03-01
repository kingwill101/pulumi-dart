// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TargetInstance resources.
class TargetInstanceState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// The Compute instance VM handling traffic for this target instance.
  /// Accepts the instance self-link, relative path
  /// (e.g. `projects/project/zones/zone/instances/instance`) or name. If
  /// name is given, the zone will default to the given zone or
  /// the provider-default zone and the project will default to the
  /// provider-level project.
  final pulumi.Input<String>? instance;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// NAT option controlling how IPs are NAT'ed to the instance.
  /// Currently only NO_NAT (default value) is supported.
  /// Default value is `NO_NAT`.
  /// Possible values are: `NO_NAT`.
  final pulumi.Input<String>? natPolicy;
  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource URL for the security policy associated with this target instance.
  final pulumi.Input<String>? securityPolicy;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// URL of the zone where the target instance resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [TargetInstanceState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [instance] The Compute instance VM handling traffic for this target instance.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [natPolicy] NAT option controlling how IPs are NAT'ed to the instance.
  /// [network] The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  /// [project] The ID of the project in which the resource belongs.
  /// [securityPolicy] The resource URL for the security policy associated with this target instance.
  /// [selfLink] The URI of the created resource.
  /// [zone] URL of the zone where the target instance resides.
  TargetInstanceState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? name,
    pulumi.Output<String>? natPolicy,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<String>? securityPolicy,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? zone,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      name = pulumi.Input.asOptionalInput<String>(name),
      natPolicy = pulumi.Input.asOptionalInput<String>(natPolicy),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      securityPolicy = pulumi.Input.asOptionalInput<String>(securityPolicy),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'instance': ?instance,
      'name': ?name,
      'natPolicy': ?natPolicy,
      'network': ?network,
      'project': ?project,
      'securityPolicy': ?securityPolicy,
      'selfLink': ?selfLink,
      'zone': ?zone,
    };
  }

  factory TargetInstanceState.fromMap(Map<String, dynamic> map) {
    return TargetInstanceState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      natPolicy: map['natPolicy'] == null ? null : pulumi.Output.create<String>(map['natPolicy'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      securityPolicy: map['securityPolicy'] == null ? null : pulumi.Output.create<String>(map['securityPolicy'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

