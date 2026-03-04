// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkEndpointGroup resources.
class NetworkEndpointGroupState {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  final pulumi.Input<int>? defaultPort;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;

  /// The uniquely generated identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? generatedId;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network to which all network endpoints in the NEG belong.
  /// Uses "default" project network if unspecified.
  final pulumi.Input<String>? network;

  /// Type of network endpoints in this network endpoint group.
  /// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
  /// endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
  /// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
  /// that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
  /// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
  /// CONNECTION balancing modes.
  /// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT.
  /// Default value is `GCE_VM_IP_PORT`.
  /// Possible values are: `GCE_VM_IP`, `GCE_VM_IP_PORT`, `NON_GCP_PRIVATE_IP_PORT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`.
  final pulumi.Input<String>? networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Number of network endpoints in the network endpoint group.
  final pulumi.Input<int>? size;

  /// Optional subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Zone where the network endpoint group is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [NetworkEndpointGroupState].
  /// [defaultPort] The default port used if the port number is not specified in the
  /// [description] An optional description of this resource. Provide this property when
  /// [generatedId] The uniquely generated identifier for the resource. This identifier is defined by the server.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [network] The network to which all network endpoints in the NEG belong.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The URI of the created resource.
  /// [size] Number of network endpoints in the network endpoint group.
  /// [subnetwork] Optional subnetwork to which all network endpoints in the NEG belong.
  /// [zone] Zone where the network endpoint group is located.
  NetworkEndpointGroupState({
    this.defaultPort,
    this.description,
    this.generatedId,
    this.name,
    this.network,
    this.networkEndpointType,
    this.project,
    this.selfLink,
    this.size,
    this.subnetwork,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': ?defaultPort,
      'description': ?description,
      'generatedId': ?generatedId,
      'name': ?name,
      'network': ?network,
      'networkEndpointType': ?networkEndpointType,
      'project': ?project,
      'selfLink': ?selfLink,
      'size': ?size,
      'subnetwork': ?subnetwork,
      'zone': ?zone,
    };
  }

  factory NetworkEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupState(
      defaultPort: (() {
        final guardedValue = map['defaultPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      generatedId: (() {
        final guardedValue = map['generatedId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkEndpointType: (() {
        final guardedValue = map['networkEndpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
