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
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.interconnect,
    this.interconnectAttachmentId,
    this.labels,
    this.location,
    this.mtu,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.updateTime,
    this.vlanId,
    this.zone,
  });

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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      interconnect: (() {
        final guardedValue = map['interconnect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interconnectAttachmentId: (() {
        final guardedValue = map['interconnectAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mtu: (() {
        final guardedValue = map['mtu'];
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
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vlanId: (() {
        final guardedValue = map['vlanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
