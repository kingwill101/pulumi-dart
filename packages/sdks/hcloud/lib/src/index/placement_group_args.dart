// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_placement_group_placement_group_args_doc}
/// The set of arguments for PlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_index_placement_group_placement_group_args_doc}
class PlacementGroupArgs {
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Placement Group.
  final pulumi.Input<String>? name;
  /// Type of the Placement Group.
  final pulumi.Input<String> type;

  /// Creates a new [PlacementGroupArgs].
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Placement Group.
  /// [type] Type of the Placement Group.
  const PlacementGroupArgs({
    this.labels,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'type': type,
    };
  }

  factory PlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupArgs(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
