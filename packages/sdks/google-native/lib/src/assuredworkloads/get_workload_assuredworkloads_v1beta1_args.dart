// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_assuredworkloads_v1beta1_get_workload_assuredworkloads_v1beta1_args_doc}
/// Arguments for getWorkload.
/// {@endtemplate}
/// {@macro pulumi_assuredworkloads_v1beta1_get_workload_assuredworkloads_v1beta1_args_doc}
class GetWorkloadAssuredworkloadsV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> workloadId;

  /// Creates a new [GetWorkloadAssuredworkloadsV1beta1Args].
  /// [location] Required.
  /// [organizationId] Required.
  /// [workloadId] Required.
  const GetWorkloadAssuredworkloadsV1beta1Args({
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

  factory GetWorkloadAssuredworkloadsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetWorkloadAssuredworkloadsV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      workloadId: pulumi.Input.fromValue(map['workloadId'] as String),
    );
  }
}
