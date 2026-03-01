// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_interconnect_args_doc}
/// Arguments for getInterconnect.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_interconnect_args_doc}
class GetInterconnectArgs {
  final pulumi.Input<String> interconnect;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInterconnectArgs].
  /// [interconnect] Required.
  /// [project] Optional.
  GetInterconnectArgs({
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

  factory GetInterconnectArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectArgs(
      interconnect: pulumi.Output.create<String>(map['interconnect'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

