// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudrun_get_locations_get_locations_args_doc}
/// Arguments for getLocations.
/// {@endtemplate}
/// {@macro pulumi_cloudrun_get_locations_get_locations_args_doc}
class GetLocationsArgs {
  /// The project to list versions for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetLocationsArgs].
  /// [project] The project to list versions for. If it
  const GetLocationsArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationsArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
