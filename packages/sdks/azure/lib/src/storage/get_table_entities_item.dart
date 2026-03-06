// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableEntitiesItem {
  /// Partition Key of the Entity.
  final pulumi.Input<String> partitionKey;
  /// A map of any additional properties in key-value format.
  final pulumi.Input<Map<String, String>> properties;
  /// Row Key of the Entity.
  final pulumi.Input<String> rowKey;

  /// Creates a new [GetTableEntitiesItem].
  /// [partitionKey] Partition Key of the Entity.
  /// [properties] A map of any additional properties in key-value format.
  /// [rowKey] Row Key of the Entity.
  const GetTableEntitiesItem({
    required this.partitionKey,
    required this.properties,
    required this.rowKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKey': partitionKey,
      'properties': properties,
      'rowKey': rowKey,
    };
  }

  factory GetTableEntitiesItem.fromMap(Map<String, dynamic> map) {
    return GetTableEntitiesItem(
      partitionKey: pulumi.Input.fromValue(map['partitionKey'] as String),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
      rowKey: pulumi.Input.fromValue(map['rowKey'] as String),
    );
  }
}

