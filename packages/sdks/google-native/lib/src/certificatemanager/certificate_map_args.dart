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
      certificateMapId: pulumi.Input.fromValue(
        map['certificateMapId'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
