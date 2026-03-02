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
      id: (map['id'] as int).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      servers: ((map['servers'] as List).cast<int>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

