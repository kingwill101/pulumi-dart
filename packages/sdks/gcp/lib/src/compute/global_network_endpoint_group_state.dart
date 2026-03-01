// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalNetworkEndpointGroup resources.
class GlobalNetworkEndpointGroupState {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  final pulumi.Input<int>? defaultPort;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Type of network endpoints in this network endpoint group.
  /// Possible values are: `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`.
  final pulumi.Input<String>? networkEndpointType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GlobalNetworkEndpointGroupState].
  /// [defaultPort] The default port used if the port number is not specified in the
  /// [description] An optional description of this resource. Provide this property when
  /// [name] Name of the resource; provided by the client when the resource is
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  GlobalNetworkEndpointGroupState({
    pulumi.Output<int>? defaultPort,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkEndpointType,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
  }) :
      defaultPort = pulumi.Input.asOptionalInput<int>(defaultPort),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkEndpointType = pulumi.Input.asOptionalInput<String>(networkEndpointType),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': ?defaultPort,
      'description': ?description,
      'name': ?name,
      'networkEndpointType': ?networkEndpointType,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GlobalNetworkEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointGroupState(
      defaultPort: map['defaultPort'] == null ? null : pulumi.Output.create<int>(map['defaultPort'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkEndpointType: map['networkEndpointType'] == null ? null : pulumi.Output.create<String>(map['networkEndpointType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

