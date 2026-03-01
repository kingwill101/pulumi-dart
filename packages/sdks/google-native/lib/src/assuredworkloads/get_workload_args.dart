// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_assuredworkloads_v1_get_workload_args_doc}
/// Arguments for getWorkload.
/// {@endtemplate}
/// {@macro pulumi_assuredworkloads_v1_get_workload_args_doc}
class GetWorkloadArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> workloadId;

  /// Creates a new [GetWorkloadArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [workloadId] Required.
  GetWorkloadArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> workloadId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      workloadId = pulumi.Input.asInput<String>(workloadId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'workloadId': workloadId,
    };
  }

  factory GetWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      workloadId: pulumi.Output.create<String>(map['workloadId'] as String),
    );
  }
}

