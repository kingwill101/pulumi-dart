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
    this.labels,
    this.name,
    this.servers,
    this.type,
  });

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
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      servers: map['servers'] == null ? null : ((map['servers']! as List).cast<int>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

