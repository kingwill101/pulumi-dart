// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_interconnect_compute_beta_args_doc}
/// Arguments for getInterconnect.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_interconnect_compute_beta_args_doc}
class GetInterconnectComputeBetaArgs {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInterconnectComputeBetaArgs].
  /// [interconnect] Required.
  /// [project] Optional.
  GetInterconnectComputeBetaArgs({
    required pulumi.Output<String> interconnect,
    pulumi.Output<String>? project,
  }) :
      interconnect = pulumi.Input.asInput<String>(interconnect),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': interconnect,
      'project': ?project,
    };
  }

  factory GetInterconnectComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectComputeBetaArgs(
      interconnect: pulumi.Output.create<String>(map['interconnect'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

