// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_nodes_db_node_property.dart';

class GetDbNodesDbNode {
  /// The dbnode name
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetDbNodesDbNodeProperty>> properties;

  /// Creates a new [GetDbNodesDbNode].
  /// [name] The dbnode name
  /// [properties] Required.
  const GetDbNodesDbNode({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.mapInputValue<List<GetDbNodesDbNodeProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GetDbNodesDbNodeProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDbNodesDbNode.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNode(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbNodesDbNodeProperty>(map['properties']!, (value) => GetDbNodesDbNodeProperty.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
