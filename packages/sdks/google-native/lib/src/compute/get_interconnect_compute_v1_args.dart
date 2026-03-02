// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_interconnect_compute_v1_args_doc}
/// Arguments for getInterconnect.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_interconnect_compute_v1_args_doc}
class GetInterconnectComputeV1Args {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInterconnectComputeV1Args].
  /// [interconnect] Required.
  /// [project] Optional.
  GetInterconnectComputeV1Args({
    required this.interconnect,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': interconnect,
      'project': ?project,
    };
  }

  factory GetInterconnectComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInterconnectComputeV1Args(
      interconnect: (map['interconnect'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

