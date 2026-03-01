// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Mesh resources.
class MeshState {
  /// Time the Mesh was created in UTC.
  final pulumi.Input<String>? createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to
  /// be redirected to this port regardless of its actual ip:port destination. If unset, a port
  /// '15001' is used as the interception port. This will is applicable only for sidecar proxy
  /// deployments.
  final pulumi.Input<int>? interceptionPort;
  /// Set of label tags associated with the Mesh resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  final pulumi.Input<String>? location;
  /// Short name of the Mesh resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// Time the Mesh was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MeshState].
  /// [createTime] Time the Mesh was created in UTC.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interceptionPort] Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the
  /// [labels] Set of label tags associated with the Mesh resource.
  /// [location] Location (region) of the Mesh resource to be created. Only the value 'global' is currently allowed; defaults to 'global' if omitted.
  /// [name] Short name of the Mesh resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] Server-defined URL of this resource.
  /// [updateTime] Time the Mesh was updated in UTC.
  MeshState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<int>? interceptionPort,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      interceptionPort = pulumi.Input.asOptionalInput<int>(interceptionPort),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'interceptionPort': ?interceptionPort,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory MeshState.fromMap(Map<String, dynamic> map) {
    return MeshState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      interceptionPort: map['interceptionPort'] == null ? null : pulumi.Output.create<int>(map['interceptionPort'] as int),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

