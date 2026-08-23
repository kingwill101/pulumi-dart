// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_name_from_id_name_from_id_args_doc}
/// Arguments for nameFromId.
/// {@endtemplate}
/// {@macro pulumi_index_name_from_id_name_from_id_args_doc}
class NameFromIdArgs {
  /// A string of a resource's id, resource URI, self link, or full resource name. For example, "projects/my-project/zones/us-central1-c/instances/my-instance", "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-c/instances/my-instance" and "//gkehub.googleapis.com/projects/my-project/locations/us-central1/memberships/my-membership" are valid values
  final pulumi.Input<String> id;

  /// Creates a new [NameFromIdArgs].
  /// [id] A string of a resource's id, resource URI, self link, or full resource name. For example, "projects/my-project/zones/us-central1-c/instances/my-instance", "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-c/instances/my-instance" and "//gkehub.googleapis.com/projects/my-project/locations/us-central1/memberships/my-membership" are valid values
  const NameFromIdArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory NameFromIdArgs.fromMap(Map<String, dynamic> map) {
    return NameFromIdArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
