// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_certificate_map_entry_args_doc}
/// Arguments for getCertificateMapEntry.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_certificate_map_entry_args_doc}
class GetCertificateMapEntryArgs {
  final pulumi.Input<String> certificateMapEntryId;
  final pulumi.Input<String> certificateMapId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateMapEntryArgs].
  /// [certificateMapEntryId] Required.
  /// [certificateMapId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateMapEntryArgs({
    required this.certificateMapEntryId,
    required this.certificateMapId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMapEntryId': certificateMapEntryId,
      'certificateMapId': certificateMapId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCertificateMapEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapEntryArgs(
      certificateMapEntryId: (map['certificateMapEntryId'] as String).input(),
      certificateMapId: (map['certificateMapId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

