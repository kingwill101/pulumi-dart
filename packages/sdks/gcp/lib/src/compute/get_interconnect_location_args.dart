// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_interconnect_location_get_interconnect_location_args_doc}
/// Arguments for getInterconnectLocation.
/// {@endtemplate}
/// {@macro pulumi_compute_get_interconnect_location_get_interconnect_location_args_doc}
class GetInterconnectLocationArgs {
  /// The name of the interconnect location.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInterconnectLocationArgs].
  /// [name] The name of the interconnect location.
  /// [project] The project in which the resource belongs. If it
  GetInterconnectLocationArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetInterconnectLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

