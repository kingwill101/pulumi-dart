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
    required this.certificateMapId,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

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
      certificateMapId: (map['certificateMapId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

