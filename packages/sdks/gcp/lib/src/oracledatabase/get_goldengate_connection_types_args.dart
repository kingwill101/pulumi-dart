// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_goldengate_connection_types_get_goldengate_connection_types_args_doc}
/// Arguments for getGoldengateConnectionTypes.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_goldengate_connection_types_get_goldengate_connection_types_args_doc}
class GetGoldengateConnectionTypesArgs {
  /// The location of resource.
  final pulumi.Input<String> location;
  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetGoldengateConnectionTypesArgs].
  /// [location] The location of resource.
  /// [project] The project to which the resource belongs. If it
  const GetGoldengateConnectionTypesArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetGoldengateConnectionTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetGoldengateConnectionTypesArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
