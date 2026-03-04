// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_trafficmanager_get_geographical_location_get_geographical_location_args_doc}
/// Arguments for getGeographicalLocation.
/// {@endtemplate}
/// {@macro pulumi_trafficmanager_get_geographical_location_get_geographical_location_args_doc}
class GetGeographicalLocationArgs {
  /// Specifies the name of the Location, for example `World`, `Europe` or `Germany`.
  final pulumi.Input<String> name;

  /// Creates a new [GetGeographicalLocationArgs].
  /// [name] Specifies the name of the Location, for example `World`, `Europe` or `Germany`.
  GetGeographicalLocationArgs({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetGeographicalLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetGeographicalLocationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
