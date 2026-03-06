// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a node type sku.
class NodeTypeSku {
  /// The number of nodes in the node type.&lt;br /&gt;&lt;br /&gt;If present in request it will override properties.vmInstanceCount.
  final pulumi.Input<int> capacity;
  /// The sku name. &lt;br /&gt;&lt;br /&gt;Name is internally generated and is used in auto-scale scenarios.&lt;br /&gt; Property does not allow to be changed to other values than generated.&lt;br /&gt; To avoid deployment errors please omit the property.
  final pulumi.Input<String>? name;
  /// Specifies the tier of the node type. &lt;br /&gt;&lt;br /&gt; Possible Values:&lt;br /&gt; **Standard**
  final pulumi.Input<String>? tier;

  /// Creates a new [NodeTypeSku].
  /// [capacity] The number of nodes in the node type.&lt;br /&gt;&lt;br /&gt;If present in request it will override properties.vmInstanceCount.
  /// [name] The sku name. &lt;br /&gt;&lt;br /&gt;Name is internally generated and is used in auto-scale scenarios.&lt;br /&gt; Property does not allow to be changed to other values than generated.&lt;br /&gt; To avoid deployment errors please omit the property.
  /// [tier] Specifies the tier of the node type. &lt;br /&gt;&lt;br /&gt; Possible Values:&lt;br /&gt; **Standard**
  const NodeTypeSku({
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

  factory NodeTypeSku.fromMap(Map<String, dynamic> map) {
    return NodeTypeSku(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

