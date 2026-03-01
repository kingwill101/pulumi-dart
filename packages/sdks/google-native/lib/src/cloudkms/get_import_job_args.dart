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
    required pulumi.Output<String> importJobId,
    required pulumi.Output<String> keyRingId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      importJobId = pulumi.Input.asInput<String>(importJobId),
      keyRingId = pulumi.Input.asInput<String>(keyRingId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      importJobId: pulumi.Output.create<String>(map['importJobId'] as String),
      keyRingId: pulumi.Output.create<String>(map['keyRingId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

