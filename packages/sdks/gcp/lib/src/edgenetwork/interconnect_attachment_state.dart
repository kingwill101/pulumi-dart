// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InterconnectAttachment resources.
class InterconnectAttachmentState {
  /// The time when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The ID of the underlying interconnect that this attachment's traffic will traverse through.
  final pulumi.Input<String>? interconnect;
  /// A unique ID that identifies this interconnect attachment.
  final pulumi.Input<String>? interconnectAttachmentId;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String>? location;
  /// IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int>? mtu;
  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/interconnectAttachments/{{interconnect_attachment_id}}`
  final pulumi.Input<String>? name;
  /// The ID of the network to which this interconnect attachment belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The time when the resource was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String>? updateTime;
  /// VLAN ID provided by user. Must be site-wise unique.
  final pulumi.Input<int>? vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [InterconnectAttachmentState].
  /// [createTime] The time when the resource was created.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interconnect] The ID of the underlying interconnect that this attachment's traffic will traverse through.
  /// [interconnectAttachmentId] A unique ID that identifies this interconnect attachment.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the virtual edge cloud. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [name] The canonical name of this resource, with format
  /// [network] The ID of the network to which this interconnect attachment belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time when the resource was last updated.
  /// [vlanId] VLAN ID provided by user. Must be site-wise unique.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  InterconnectAttachmentState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? interconnect,
    pulumi.Output<String>? interconnectAttachmentId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
    pulumi.Output<int>? vlanId,
    pulumi.Output<String>? zone,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      interconnect = pulumi.Input.asOptionalInput<String>(interconnect),
      interconnectAttachmentId = pulumi.Input.asOptionalInput<String>(interconnectAttachmentId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'interconnect': ?interconnect,
      'interconnectAttachmentId': ?interconnectAttachmentId,
      'labels': ?labels,
      'location': ?location,
      'mtu': ?mtu,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
      'vlanId': ?vlanId,
      'zone': ?zone,
    };
  }

  factory InterconnectAttachmentState.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      interconnect: map['interconnect'] == null ? null : pulumi.Output.create<String>(map['interconnect'] as String),
      interconnectAttachmentId: map['interconnectAttachmentId'] == null ? null : pulumi.Output.create<String>(map['interconnectAttachmentId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

