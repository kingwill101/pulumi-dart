// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointAttachment resources.
class EndpointAttachmentState {
  /// Time the Namespace was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Enable global access for endpoint attachment.
  final pulumi.Input<bool>? endpointGlobalAccess;
  /// The Private Service Connect connection endpoint ip.
  final pulumi.Input<String>? endpointIp;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location in which Endpoint Attachment needs to be created.
  final pulumi.Input<String>? location;
  /// Name of Endpoint Attachment needs to be created.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The path of the service attachment.
  final pulumi.Input<String>? serviceAttachment;
  /// Time the Namespace was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EndpointAttachmentState].
  /// [createTime] Time the Namespace was created in UTC.
  /// [description] Description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpointGlobalAccess] Enable global access for endpoint attachment.
  /// [endpointIp] The Private Service Connect connection endpoint ip.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Location in which Endpoint Attachment needs to be created.
  /// [name] Name of Endpoint Attachment needs to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceAttachment] The path of the service attachment.
  /// [updateTime] Time the Namespace was updated in UTC.
  EndpointAttachmentState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? endpointGlobalAccess,
    pulumi.Output<String>? endpointIp,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceAttachment,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpointGlobalAccess = pulumi.Input.asOptionalInput<bool>(endpointGlobalAccess),
      endpointIp = pulumi.Input.asOptionalInput<String>(endpointIp),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceAttachment = pulumi.Input.asOptionalInput<String>(serviceAttachment),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'endpointGlobalAccess': ?endpointGlobalAccess,
      'endpointIp': ?endpointIp,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAttachment': ?serviceAttachment,
      'updateTime': ?updateTime,
    };
  }

  factory EndpointAttachmentState.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpointGlobalAccess: map['endpointGlobalAccess'] == null ? null : pulumi.Output.create<bool>(map['endpointGlobalAccess'] as bool),
      endpointIp: map['endpointIp'] == null ? null : pulumi.Output.create<String>(map['endpointIp'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceAttachment: map['serviceAttachment'] == null ? null : pulumi.Output.create<String>(map['serviceAttachment'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

