// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_cutover_job_args_doc}
/// The set of arguments for CutoverJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_cutover_job_args_doc}
class CutoverJobArgs {
  /// Required. The cutover job identifier.
  final pulumi.Input<String> cutoverJobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [CutoverJobArgs].
  /// [cutoverJobId] Required. The cutover job identifier.
  /// [location] Optional.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required.
  CutoverJobArgs({
    required this.cutoverJobId,
    this.location,
    required this.migratingVmId,
    this.project,
    this.requestId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cutoverJobId': cutoverJobId,
      'location': ?location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'requestId': ?requestId,
      'sourceId': sourceId,
    };
  }

  factory CutoverJobArgs.fromMap(Map<String, dynamic> map) {
    return CutoverJobArgs(
      cutoverJobId: (map['cutoverJobId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      migratingVmId: (map['migratingVmId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      sourceId: (map['sourceId'] as String).input(),
    );
  }
}

