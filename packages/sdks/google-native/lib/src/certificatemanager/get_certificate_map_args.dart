// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_certificate_map_args_doc}
/// Arguments for getCertificateMap.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_certificate_map_args_doc}
class GetCertificateMapArgs {
  final pulumi.Input<String> certificateMapId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateMapArgs].
  /// [certificateMapId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateMapArgs({
    required this.certificateMapId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMapId': certificateMapId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateMapArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapArgs(
      certificateMapId: (map['certificateMapId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

