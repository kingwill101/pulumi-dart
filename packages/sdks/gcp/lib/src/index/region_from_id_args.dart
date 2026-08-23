// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_region_from_id_region_from_id_args_doc}
/// Arguments for regionFromId.
/// {@endtemplate}
/// {@macro pulumi_index_region_from_id_region_from_id_args_doc}
class RegionFromIdArgs {
  /// A string of a resource's id, a resource's self link, or an OP style resource name. For example, "projects/my-project/regions/us-central1/subnetworks/my-subnetwork" and "https://www.googleapis.com/compute/v1/projects/my-project/regions/us-central1/subnetworks/my-subnetwork" are valid values containing regions
  final pulumi.Input<String> id;

  /// Creates a new [RegionFromIdArgs].
  /// [id] A string of a resource's id, a resource's self link, or an OP style resource name. For example, "projects/my-project/regions/us-central1/subnetworks/my-subnetwork" and "https://www.googleapis.com/compute/v1/projects/my-project/regions/us-central1/subnetworks/my-subnetwork" are valid values containing regions
  const RegionFromIdArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory RegionFromIdArgs.fromMap(Map<String, dynamic> map) {
    return RegionFromIdArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
