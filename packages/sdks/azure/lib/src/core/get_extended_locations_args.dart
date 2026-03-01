// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_extended_locations_get_extended_locations_args_doc}
/// Arguments for getExtendedLocations.
/// {@endtemplate}
/// {@macro pulumi_core_get_extended_locations_get_extended_locations_args_doc}
class GetExtendedLocationsArgs {
  /// The Azure location to retrieve the Extended Locations for.
  final pulumi.Input<String> location;

  /// Creates a new [GetExtendedLocationsArgs].
  /// [location] The Azure location to retrieve the Extended Locations for.
  GetExtendedLocationsArgs({
    required pulumi.Output<String> location,
  }) :
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetExtendedLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetExtendedLocationsArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

