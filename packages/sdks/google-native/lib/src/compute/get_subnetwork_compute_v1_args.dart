// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_subnetwork_compute_v1_args_doc}
/// Arguments for getSubnetwork.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_subnetwork_compute_v1_args_doc}
class GetSubnetworkComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetSubnetworkComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [subnetwork] Required.
  GetSubnetworkComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> subnetwork,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      subnetwork = pulumi.Input.asInput<String>(subnetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'subnetwork': subnetwork,
    };
  }

  factory GetSubnetworkComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      subnetwork: pulumi.Output.create<String>(map['subnetwork'] as String),
    );
  }
}

