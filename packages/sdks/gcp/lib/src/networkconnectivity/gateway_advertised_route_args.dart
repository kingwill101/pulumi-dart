// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_gateway_advertised_route_gateway_advertised_route_args_doc}
/// The set of arguments for GatewayAdvertisedRoute.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_gateway_advertised_route_gateway_advertised_route_args_doc}
class GatewayAdvertisedRouteArgs {
  /// An optional description of the gateway advertised route.
  final pulumi.Input<String>? description;
  /// This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a /32 singular IP address range, and, for IPv6, /128
  final pulumi.Input<String>? ipRange;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The name of the gateway advertised route. Route names must be unique.
  final pulumi.Input<String>? name;
  /// The priority of this advertised route. You can choose a value from 0 to 65335.
  /// If you don't provide a value, Google Cloud assigns a priority of 100 to the ranges.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// the recipient of this advertised route
  /// Possible values are: `RECIPIENT_UNSPECIFIED`, `ADVERTISE_TO_HUB`.
  final pulumi.Input<String>? recipient;
  /// The name of the spoke
  final pulumi.Input<String> spoke;

  /// Creates a new [GatewayAdvertisedRouteArgs].
  /// [description] An optional description of the gateway advertised route.
  /// [ipRange] This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [location] The location for the resource
  /// [name] The name of the gateway advertised route. Route names must be unique.
  /// [priority] The priority of this advertised route. You can choose a value from 0 to 65335.
  /// [project] The ID of the project in which the resource belongs.
  /// [recipient] the recipient of this advertised route
  /// [spoke] The name of the spoke
  GatewayAdvertisedRouteArgs({
    this.description,
    this.ipRange,
    this.labels,
    required this.location,
    this.name,
    this.priority,
    this.project,
    this.recipient,
    required this.spoke,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipRange': ?ipRange,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'recipient': ?recipient,
      'spoke': spoke,
    };
  }

  factory GatewayAdvertisedRouteArgs.fromMap(Map<String, dynamic> map) {
    return GatewayAdvertisedRouteArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipRange: map['ipRange'] == null ? null : (map['ipRange'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      recipient: map['recipient'] == null ? null : (map['recipient'] as String).input(),
      spoke: (map['spoke'] as String).input(),
    );
  }
}

