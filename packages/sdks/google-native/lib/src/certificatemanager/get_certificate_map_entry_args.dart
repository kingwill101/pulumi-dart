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
    required pulumi.Output<String> certificateMapEntryId,
    required pulumi.Output<String> certificateMapId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      certificateMapEntryId = pulumi.Input.asInput<String>(certificateMapEntryId),
      certificateMapId = pulumi.Input.asInput<String>(certificateMapId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      certificateMapEntryId: pulumi.Output.create<String>(map['certificateMapEntryId'] as String),
      certificateMapId: pulumi.Output.create<String>(map['certificateMapId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

