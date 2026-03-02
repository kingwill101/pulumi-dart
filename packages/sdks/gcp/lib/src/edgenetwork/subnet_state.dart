// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv4Cidrs;
  /// The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv6Cidrs;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String>? location;
  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}`
  final pulumi.Input<String>? name;
  /// The ID of the network to which this router belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Current stage of the resource to the device by config push.
  final pulumi.Input<String>? state;
  /// A unique ID that identifies this subnet.
  final pulumi.Input<String>? subnetId;
  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? updateTime;
  /// VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  final pulumi.Input<int>? vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [SubnetState].
  /// [createTime] The time when the subnet was created.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipv4Cidrs] The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  /// [ipv6Cidrs] The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [name] The canonical name of this resource, with format
  /// [network] The ID of the network to which this router belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Current stage of the resource to the device by config push.
  /// [subnetId] A unique ID that identifies this subnet.
  /// [updateTime] The time when the subnet was last updated.
  /// [vlanId] VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  SubnetState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.ipv4Cidrs,
    this.ipv6Cidrs,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.state,
    this.subnetId,
    this.updateTime,
    this.vlanId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'ipv4Cidrs': ?ipv4Cidrs,
      'ipv6Cidrs': ?ipv6Cidrs,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'subnetId': ?subnetId,
      'updateTime': ?updateTime,
      'vlanId': ?vlanId,
      'zone': ?zone,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      ipv4Cidrs: map['ipv4Cidrs'] == null ? null : ((map['ipv4Cidrs'] as List).cast<String>()).input(),
      ipv6Cidrs: map['ipv6Cidrs'] == null ? null : ((map['ipv6Cidrs'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId'] as int).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

