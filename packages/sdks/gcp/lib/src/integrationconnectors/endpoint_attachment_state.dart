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
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.endpointGlobalAccess,
    this.endpointIp,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceAttachment,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      endpointGlobalAccess: map['endpointGlobalAccess'] == null ? null : (map['endpointGlobalAccess'] as bool).input(),
      endpointIp: map['endpointIp'] == null ? null : (map['endpointIp'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      serviceAttachment: map['serviceAttachment'] == null ? null : (map['serviceAttachment'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

