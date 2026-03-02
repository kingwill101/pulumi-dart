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
    required this.location,
    required this.organizationId,
    required this.workloadId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'workloadId': workloadId,
    };
  }

  factory GetWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadArgs(
      location: (map['location'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      workloadId: (map['workloadId'] as String).input(),
    );
  }
}

