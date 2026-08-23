// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_from_id_zone_from_id_args_doc}
/// Arguments for zoneFromId.
/// {@endtemplate}
/// {@macro pulumi_index_zone_from_id_zone_from_id_args_doc}
class ZoneFromIdArgs {
  /// An id of a resource, or a self link. For example, both "projects/my-project/zones/us-central1-c/instances/my-instance" and "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-c/instances/my-instance" are valid inputs
  final pulumi.Input<String> id;

  /// Creates a new [ZoneFromIdArgs].
  /// [id] An id of a resource, or a self link. For example, both "projects/my-project/zones/us-central1-c/instances/my-instance" and "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-c/instances/my-instance" are valid inputs
  const ZoneFromIdArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZoneFromIdArgs.fromMap(Map<String, dynamic> map) {
    return ZoneFromIdArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
