// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_import_job_args_doc}
/// Arguments for getImportJob.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_import_job_args_doc}
class GetImportJobArgs {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImportJobArgs].
  /// [importJobId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetImportJobArgs({
    required this.importJobId,
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importJobId': importJobId,
      'keyRingId': keyRingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetImportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs(
      importJobId: pulumi.Input.fromValue(map['importJobId'] as String),
      keyRingId: pulumi.Input.fromValue(map['keyRingId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
