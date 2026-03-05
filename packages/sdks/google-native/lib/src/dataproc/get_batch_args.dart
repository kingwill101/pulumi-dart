// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_batch_args_doc}
/// Arguments for getBatch.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_batch_args_doc}
class GetBatchArgs {
  final pulumi.Input<String> batchId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBatchArgs].
  /// [batchId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBatchArgs({
    required this.batchId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchId': batchId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBatchArgs.fromMap(Map<String, dynamic> map) {
    return GetBatchArgs(
      batchId: pulumi.Input.fromValue(map['batchId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

