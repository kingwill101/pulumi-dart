// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_certificate_map_args_doc}
/// The set of arguments for CertificateMap.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_certificate_map_args_doc}
class CertificateMapArgs {
  /// Required. A user-provided name of the certificate map.
  final pulumi.Input<String> certificateMapId;
  /// One or more paragraphs of text description of a certificate map.
  final pulumi.Input<String>? description;
  /// Set of labels associated with a Certificate Map.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateMapArgs].
  /// [certificateMapId] Required. A user-provided name of the certificate map.
  /// [description] One or more paragraphs of text description of a certificate map.
  /// [labels] Set of labels associated with a Certificate Map.
  /// [location] Optional.
  /// [name] A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  /// [project] Optional.
  CertificateMapArgs({
    required pulumi.Output<String> certificateMapId,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      certificateMapId = pulumi.Input.asInput<String>(certificateMapId),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMapId': certificateMapId,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CertificateMapArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapArgs(
      certificateMapId: pulumi.Output.create<String>(map['certificateMapId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

