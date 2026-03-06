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
  const GetInterconnectArgs({
    required this.interconnect,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': interconnect,
      'project': ?project,
    };
  }

  factory GetInterconnectArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectArgs(
      interconnect: pulumi.Input.fromValue(map['interconnect'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

