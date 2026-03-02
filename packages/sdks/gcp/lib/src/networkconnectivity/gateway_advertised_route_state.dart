// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayAdvertisedRoute resources.
class GatewayAdvertisedRouteState {
  /// The time the gateway advertised route was created.
  final pulumi.Input<String>? createTime;
  /// An optional description of the gateway advertised route.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a /32 singular IP address range, and, for IPv6, /128
  final pulumi.Input<String>? ipRange;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The name of the gateway advertised route. Route names must be unique.
  final pulumi.Input<String>? name;
  /// The priority of this advertised route. You can choose a value from 0 to 65335.
  /// If you don't provide a value, Google Cloud assigns a priority of 100 to the ranges.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// the recipient of this advertised route
  /// Possible values are: `RECIPIENT_UNSPECIFIED`, `ADVERTISE_TO_HUB`.
  final pulumi.Input<String>? recipient;
  /// The name of the spoke
  final pulumi.Input<String>? spoke;
  /// The current lifecycle state of this gateway advertised route.
  final pulumi.Input<String>? state;
  /// The Google-generated UUID for the gateway advertised route.
  /// This value is unique across all gateway advertised route resources.
  /// If a gateway advertised route is deleted and another with the same name is created, the new route is assigned a different uniqueId.
  final pulumi.Input<String>? uniqueId;
  /// The time the gateway advertised route was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GatewayAdvertisedRouteState].
  /// [createTime] The time the gateway advertised route was created.
  /// [description] An optional description of the gateway advertised route.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipRange] This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [location] The location for the resource
  /// [name] The name of the gateway advertised route. Route names must be unique.
  /// [priority] The priority of this advertised route. You can choose a value from 0 to 65335.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [recipient] the recipient of this advertised route
  /// [spoke] The name of the spoke
  /// [state] The current lifecycle state of this gateway advertised route.
  /// [uniqueId] The Google-generated UUID for the gateway advertised route.
  /// [updateTime] The time the gateway advertised route was last updated.
  GatewayAdvertisedRouteState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.ipRange,
    this.labels,
    this.location,
    this.name,
    this.priority,
    this.project,
    this.pulumiLabels,
    this.recipient,
    this.spoke,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'ipRange': ?ipRange,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'priority': ?priority,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'recipient': ?recipient,
      'spoke': ?spoke,
      'state': ?state,
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory GatewayAdvertisedRouteState.fromMap(Map<String, dynamic> map) {
    return GatewayAdvertisedRouteState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      ipRange: map['ipRange'] == null ? null : (map['ipRange'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      recipient: map['recipient'] == null ? null : (map['recipient'] as String).input(),
      spoke: map['spoke'] == null ? null : (map['spoke'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uniqueId: map['uniqueId'] == null ? null : (map['uniqueId'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

