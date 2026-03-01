// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PlacementGroup resources.
class PlacementGroupState {
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Placement Group.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<int>>? servers;
  /// Type of the Placement Group.
  final pulumi.Input<String>? type;

  /// Creates a new [PlacementGroupState].
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Placement Group.
  /// [servers] Optional.
  /// [type] Type of the Placement Group.
  PlacementGroupState({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<List<int>>? servers,
    pulumi.Output<String>? type,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      servers = pulumi.Input.asOptionalInput<List<int>>(servers),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'servers': ?servers,
      'type': ?type,
    };
  }

  factory PlacementGroupState.fromMap(Map<String, dynamic> map) {
    return PlacementGroupState(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servers: map['servers'] == null ? null : pulumi.Output.create<List<int>>((map['servers'] as List).cast<int>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

