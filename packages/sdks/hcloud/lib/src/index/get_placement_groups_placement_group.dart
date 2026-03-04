// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPlacementGroupsPlacementGroup {
  final pulumi.Input<int> id;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> name;
  final pulumi.Input<List<int>> servers;
  final pulumi.Input<String> type;

  /// Creates a new [GetPlacementGroupsPlacementGroup].
  /// [id] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [servers] Required.
  /// [type] Required.
  GetPlacementGroupsPlacementGroup({
    required this.id,
    required this.labels,
    required this.name,
    required this.servers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labels': labels,
      'name': name,
      'servers': servers,
      'type': type,
    };
  }

  factory GetPlacementGroupsPlacementGroup.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroup(
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      servers: pulumi.Input.fromValue((map['servers'] as List).cast<int>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
