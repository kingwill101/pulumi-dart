// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_location_from_id_location_from_id_args_doc}
/// Arguments for locationFromId.
/// {@endtemplate}
/// {@macro pulumi_index_location_from_id_location_from_id_args_doc}
class LocationFromIdArgs {
  /// A string of a resource's id, a resource's self link, or an OP style resource name. For example, "projects/my-project/locations/us-central1/services/my-service" and "https://run.googleapis.com/v2/projects/my-project/locations/us-central1/services/my-service" are valid values containing locations
  final pulumi.Input<String> id;

  /// Creates a new [LocationFromIdArgs].
  /// [id] A string of a resource's id, a resource's self link, or an OP style resource name. For example, "projects/my-project/locations/us-central1/services/my-service" and "https://run.googleapis.com/v2/projects/my-project/locations/us-central1/services/my-service" are valid values containing locations
  const LocationFromIdArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory LocationFromIdArgs.fromMap(Map<String, dynamic> map) {
    return LocationFromIdArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
