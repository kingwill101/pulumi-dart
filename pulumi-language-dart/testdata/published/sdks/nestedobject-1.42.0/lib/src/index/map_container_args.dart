// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_map_container_args_doc}
/// The set of arguments for MapContainer.
/// {@endtemplate}
/// {@macro pulumi_index_map_container_args_doc}
class MapContainerArgs {
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [MapContainerArgs].
  /// [tags] Required.
  const MapContainerArgs({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory MapContainerArgs.fromMap(Map<String, dynamic> map) {
    return MapContainerArgs(
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
