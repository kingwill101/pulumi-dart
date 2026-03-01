// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_cutover_job_vmmigration_v1alpha1_args_doc}
/// The set of arguments for CutoverJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_cutover_job_vmmigration_v1alpha1_args_doc}
class CutoverJobVmmigrationV1alpha1Args {
  /// Required. The cutover job identifier.
  final pulumi.Input<String> cutoverJobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [CutoverJobVmmigrationV1alpha1Args].
  /// [cutoverJobId] Required. The cutover job identifier.
  /// [location] Optional.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [sourceId] Required.
  CutoverJobVmmigrationV1alpha1Args({
    required pulumi.Output<String> cutoverJobId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> migratingVmId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<String> sourceId,
  }) :
      cutoverJobId = pulumi.Input.asInput<String>(cutoverJobId),
      location = pulumi.Input.asOptionalInput<String>(location),
      migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceId = pulumi.Input.asInput<String>(sourceId);

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

  factory CutoverJobVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return CutoverJobVmmigrationV1alpha1Args(
      cutoverJobId: pulumi.Output.create<String>(map['cutoverJobId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migratingVmId: pulumi.Output.create<String>(map['migratingVmId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
    );
  }
}

