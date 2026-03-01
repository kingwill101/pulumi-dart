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
  PlacementGroupArgs({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    required pulumi.Output<String> type,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'type': type,
    };
  }

  factory PlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupArgs(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

