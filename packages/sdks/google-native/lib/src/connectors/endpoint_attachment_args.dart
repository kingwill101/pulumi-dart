// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;
  /// Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  final pulumi.Input<String> endpointAttachmentId;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The path of the service attachment
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [EndpointAttachmentArgs].
  /// [description] Optional. Description of the resource.
  /// [endpointAttachmentId] Required. Identifier to assign to the EndpointAttachment. Must be unique within scope of the parent resource.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [project] Optional.
  /// [serviceAttachment] The path of the service attachment
  EndpointAttachmentArgs({
    this.description,
    required this.endpointAttachmentId,
    this.labels,
    this.location,
    this.project,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointAttachmentId': endpointAttachmentId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpointAttachmentId: (map['endpointAttachmentId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceAttachment: (map['serviceAttachment'] as String).input(),
    );
  }
}

