// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String>? location;
  /// IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int>? mtu;
  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String>? name;
  /// A unique ID that identifies this network.
  final pulumi.Input<String>? networkId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? updateTime;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [NetworkState].
  /// [createTime] The time when the subnet was created.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [name] The canonical name of this resource, with format
  /// [networkId] A unique ID that identifies this network.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time when the subnet was last updated.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  NetworkState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? zone,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'mtu': ?mtu,
      'name': ?name,
      'networkId': ?networkId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
      'zone': ?zone,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

