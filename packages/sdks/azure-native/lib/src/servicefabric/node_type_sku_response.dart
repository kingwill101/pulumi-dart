// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a node type sku.
class NodeTypeSkuResponse {
  /// The number of nodes in the node type.<br /><br />If present in request it will override properties.vmInstanceCount.
  final pulumi.Input<int> capacity;
  /// The sku name. <br /><br />Name is internally generated and is used in auto-scale scenarios.<br /> Property does not allow to be changed to other values than generated.<br /> To avoid deployment errors please omit the property.
  final pulumi.Input<String>? name;
  /// Specifies the tier of the node type. <br /><br /> Possible Values:<br /> **Standard**
  final pulumi.Input<String>? tier;

  /// Creates a new [NodeTypeSkuResponse].
  /// [capacity] The number of nodes in the node type.<br /><br />If present in request it will override properties.vmInstanceCount.
  /// [name] The sku name. <br /><br />Name is internally generated and is used in auto-scale scenarios.<br /> Property does not allow to be changed to other values than generated.<br /> To avoid deployment errors please omit the property.
  /// [tier] Specifies the tier of the node type. <br /><br /> Possible Values:<br /> **Standard**
  NodeTypeSkuResponse({
    required this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory NodeTypeSkuResponse.fromMap(Map<String, dynamic> map) {
    return NodeTypeSkuResponse(
      capacity: (map['capacity'] as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

